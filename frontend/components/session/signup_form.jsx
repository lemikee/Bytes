import React from 'react';
import { Link } from "react-router-dom";

class SignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: "",
      first_name: "",
      last_name: "",
      email: "",
      zip_code: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({ [field]: e.currentTarget.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.processForm(this.state);
  }

  render() {

    return (
      <div className='session-container'>
        <h1>Create a new account</h1>

        <form className="session-form" onSubmit={this.handleSubmit}>

          <input type='text' placeholder='Username' value={this.state.username} onChange={this.update('username')} />
          <input type type='password' placeholder='Password' value={this.state.password} onChange={this.update('password')} />
          <input type='email' placeholder='Email' value={this.state.email} onChange={this.update('email')} />

          <div className='name-container'>
            <input type='text' placeholder='First Name' value={this.state.firstName} onChange={this.update('first_name')} />
            <input type='text' placeholder='Last Name' value={this.state.lastName} onChange={this.update('last_name')} />
          </div>

          <input type='number' placeholder='ZIP Code' value={this.state.zipcode} onChange={this.update('zip_code')} />

          <button className='signup-btn'>Sign Up</button>
          <p>Already on Bytes? <Link to='/login'>Log in</Link></p>
        </form>
        {this.props.errors.map((error, i) => <li key={i}>{error}</li>)}
      </div>
    );
  }
}

export default SignupForm;
