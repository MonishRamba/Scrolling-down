const githubUsername = 'ilaria-manco'; // Replace with the GitHub username
const repositoryName = 'multimodal-ml-music'; // Replace with the repository name
const readmeFileName = 'README.md'; // Replace with the README file name

// Construct the URL to the GitHub API for the README file
const githubApiUrl = `https://api.github.com/repos/${githubUsername}/${repositoryName}/contents/${readmeFileName}`;

// Fetch the content of the README file
fetch(githubApiUrl)
  .then((response) => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error('Failed to fetch README file from GitHub');
    }
  })
  .then((data) => {
    // Decode the content from base64
    const readmeContent = atob(data.content);

    // Process and use the content of the README file
    console.log(readmeContent);
  })
  .catch((error) => {
    console.error('Error fetching the README file from GitHub:', error);
  });
