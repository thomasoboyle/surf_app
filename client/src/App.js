import React, { Component } from 'react';
import axios from 'axios';
import logo from './logo.svg';
import './App.css';

class App extends Component {
      constructor(props){
        super(props)
        this.state = {
            data: []
        }
    }

  componentDidMount() {
        axios.get('api/v1/spots.json')
        .then(response => {
            console.log(response)
            this.setState({
                data: response.data
            })
        })
        .catch(error => console.log(error))
    }

  render() {
    return (
      <div>
        {JSON.stringify(this.state.data, null, 2)}
      </div>
    );
  }
}

export default App;
