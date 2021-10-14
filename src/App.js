import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Se chorar é pior!</h1>
        <img src={logo} className="App-logo" alt="logo" />
        <img src="https://dog.ceo/api/breeds/image/random" className="App-logo" alt="logo" />
      </header>
    </div>
  );
}

export default App;
