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


// Import 'node-fetch' outside of the function
import('node-fetch').then((fetch) => {
  function call() {
      const apiKey = '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';  // Replace with your actual OpenAI API key
      const apiEndpoint = 'https://api.openai.com/v1/engines/davinci/completions';  // Use the engine of your choice
      
      const prompt = "From here I will ask you questions about the information mention below: {}";
      const textToTranslate = readmeContent;
      
      const params = {
          prompt: prompt.replace("{}", textToTranslate),
          max_tokens: 50,  // Adjust the token limit as needed
          temperature: 0.7,  // Adjust the temperature for response randomness
      };
      
      fetch(apiEndpoint, {
          method: 'POST',
          headers: {
              'Authorization': `Bearer ${apiKey}`,
              'Content-Type': 'application/json',
          },
          body: JSON.stringify(params),
      })
      .then(response => response.json())
      .then(data => {
          const generatedText = data.choices[0].text;
          console.log(generatedText);
      })
      .catch(error => {
          console.error('Error:', error);
      });
  }

  
call();
});
