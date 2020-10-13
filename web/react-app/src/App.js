import { render } from '@testing-library/react';
import React, { Component } from 'react';
import './App.css';

function Subjuct() extends Component {
  render(){
    return (
      <header>
        <h1>WEB</h1>
      </header>
    );
  }
}

function App() {
  return (
    <div className="App">
      <h1>Hello !! React </h1>
    </div>
  );
}

export default App;
