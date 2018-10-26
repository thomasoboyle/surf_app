import React, {Component} from 'react';
import axios from 'axios';
import logo from './logo.svg';
import './App.css';
import Table from 'antd/lib/table'

const columns = [{
  title: 'Surfers',
  dataIndex: 'surfer',
  key: 'surfer',
}, {
  title: 'Date',
  dataIndex: 'date',
  key: 'date',
}, {
  title: 'Surf Spot',
  dataIndex: 'surf_spot',
  key: 'surf_spot',
}, {
  title: 'Wave Height',
  dataIndex: 'average_wave_height',
  key: 'average_wave_height',
}, {
  title: 'Date',
  dataIndex: 'date',
  key: 'date',
}, {
  title: 'Surf Spot',
  dataIndex: 'surf_spot',
  key: 'surf_spot',
}];

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [],
    };
  }

  componentDidMount() {
    axios
      .get('api/v1/surf_sessions.json')
      .then(response => {
        console.log(response);
        this.setState({
          data: response.data,
        });
      })
      .catch(error => console.log(error));
  }

  render() {
    return (
      <div>
        <h1> Surf Sessions </h1>
        <Table dataSource={this.state.data} columns={columns} />
      </div>
    );
  }
}

export default App;
