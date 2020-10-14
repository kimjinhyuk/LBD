import { render } from '@testing-library/react';
import React from 'react';
import PropTypes from "prop-types";

class App extends React.Component{
  state = {
    count : 0
  };

  add = () => {
    this.setState(current =>({ count : current.count + 1}));
  };
  minus = () => {
    this.setState(current =>({ count : current.count - 1}));
  };
  clear = () => {
    this.setState(current =>({ count : current.count = 0}));
  };

  render() {
    return (<div> 
      <h1> The number is : {this.state.count} </h1>
      <button onClick={this.add}>Add</button>
      <button onClick={this.minus}>minus</button>
      <button onClick={this.clear}>clear</button>
    </div>
    );
  }
}

export default App;
