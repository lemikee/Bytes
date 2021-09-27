import React from 'react';
import { Link } from "react-router-dom";

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoSubmit = this.demoSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({ [field]: e.currentTarget.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.processForm(this.state);
  }

  demoSubmit() {
    this.props.processForm({ username: 'demo', password: 'password' });
  }

  render() {
    return (
      <div className='session-container'>
        <h1>Log in to Bytes</h1>
        <form className="session-form">
          <input type='text' value={this.state.username} onChange={this.update('username')} placeholder='Username' />
          <input type type='password' value={this.state.password} onChange={this.update('password')} placeholder='Password' />
          <Link to='#'>Forgot password?</Link>
          <button className='login-btn' onClick={this.handleSubmit}>Log In</button>
          <button className='demo-login-btn' onClick={this.demoSubmit}>Demo Log In</button>
          <p>New to Bytes? <Link to='/signup'>Sign Up</Link></p>
        </form>

        {this.props.errors.map((error, i) => <li key={i}>{error}</li>)}
      </div>
    );
  }
}

export default LoginForm;
