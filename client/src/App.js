import React, {Component} from 'react';
import axios from 'axios';
import logo from './logo.svg';
import './App.css';
import Table from 'antd/lib/table'

const columns = [{
  title: 'Title',
  dataIndex: 'title',
  key: 'title',
}, {
  title: 'Location',
  dataIndex: 'location',
  key: 'location',
}, {
  title: 'Type',
  dataIndex: 'wave_type',
  key: 'wave_type',
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
      .get('api/v1/spots.json')
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
        <Table dataSource={this.state.data} columns={columns} />
      </div>
    );
  }
}

export default App;
