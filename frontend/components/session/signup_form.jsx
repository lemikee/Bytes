import React from "react";
import { Link } from "react-router-dom";
import ButtonMailto from "../email/email";

class SignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: "",
      first_name: "",
      last_name: "",
      zip_code: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.processForm(this.state);
  }

  componentWillUnmount() {
    this.props.removeErrors();
  }

  render() {
    return (
      <div className="signup-page">
        <div className="form-page">
          <div className="login-signup-nav">
            <Link to="/" className="nav-bar">
              <p className="login-sign-up-name">Bytes</p>
              <i className="fab fa-yelp fa-lg"></i>
            </Link>
          </div>
          <div className="form-content">
            <div className="session-container">
              <h2>Sign Up for Bytes</h2>
              <p className="subheading">Connect with great local businesses</p>
              <p className="legal">
                By continuing, you agree to give Mike a phone screening.
              </p>
              <form className="session-form" onSubmit={this.handleSubmit}>
                {/* <input
                  type="text"
                  placeholder="Username"
                  value={this.state.username}
                  onChange={this.update("username")}
                /> */}
                <div className="name-container">
                  <input
                    type="text"
                    placeholder="First Name"
                    value={this.state.firstName}
                    onChange={this.update("first_name")}
                  />
                  <input
                    type="text"
                    placeholder="Last Name"
                    value={this.state.lastName}
                    onChange={this.update("last_name")}
                  />
                </div>
                <input
                  type="email"
                  placeholder="Email"
                  value={this.state.email}
                  onChange={this.update("email")}
                />
                <input
                  type="password"
                  placeholder="Password"
                  value={this.state.password}
                  onChange={this.update("password")}
                />

                <input
                  className="zip"
                  type="number"
                  placeholder="ZIP Code"
                  value={this.state.zipcode}
                  onChange={this.update("zip_code")}
                />

                <button className="signup-login-btn">Sign Up</button>
                <p className="align-right">
                  Already on Bytes? <Link to="/login">Log in</Link>
                </p>
              </form>
              {this.props.errors.map((error, i) => (
                <li key={i}>{error}</li>
              ))}
            </div>
            <img
              id="signup-login-logo"
              src={window.signuplogin}
              width="300"
              height="300"
            />
          </div>
        </div>
      </div>
    );
  }
}

export default SignupForm;
