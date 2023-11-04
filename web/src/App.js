import logo from './logo.svg';
import './App.css';
import React, {Component, useState} from 'react'


import VideoUpload from './VideoUpload';

class Main extends Component {
  render() {
    return (
      <div className="App">
        <VideoUpload />
      </div>
    );
  }
}

export default Main