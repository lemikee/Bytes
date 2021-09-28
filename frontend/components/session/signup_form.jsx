import React from "react";
import { Link } from "react-router-dom";

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
                By continuing, you agree to Bytes'
                <Link to="#">Terms of Service</Link>
                and acknowledge Bytes'
                <Link to="#">Privacy Policy</Link>
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
                  type
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
          <div className="footer">
            <div className="footer-links">
              <div className="col-one col">
                <p className="col-title">About</p>
                <br />

                <div id="email-container">
                  <a href="https://www.linkedin.com/in/mike-le/">LinkedIn</a>
                </div>
                <div id="email-container">
                  <a href="https://github.com/lemikee">Github</a>
                </div>
                <div id="email-container">
                  <a href="https://angel.co/u/mike-le-5">AngelList</a>
                </div>
                {/* <Link to="#" className="col-content">
                  About Yelp
                </Link>
                <Link to="#" className="col-content">
                  Careers
                </Link>
                <Link to="#" className="col-content">
                  Press
                </Link>
                <Link to="#" className="col-content">
                  Investor Relations
                </Link>
                <Link to="#" className="col-content">
                  Content Guidelines
                </Link>
                <Link to="#" className="col-content">
                  Accessibility Statement
                </Link>
                <Link to="#" className="col-content">
                  Terms of Service
                </Link>
                <Link to="#" className="col-content">
                  Privacy Policy
                </Link>
                <Link to="#" className="col-content">
                  Ad Choices
                </Link> */}
              </div>
              <div className="col-two col">
                <p className="col-title">Discover</p>
                <br />

                {/* <a href="../../../app/assets/documents/resume.pdf" download>
                  Resume
                </a> */}

                <div id="email-container">
                  <ButtonMailto
                    className="email-me"
                    label="Email"
                    mailto="mailto:lemichael@berkeley.edu"
                  />
                </div>
                {/* <Link to="#" className="col-content">
                  Collections
                </Link>
                <Link to="#" className="col-content">
                  Talk
                </Link>
                <Link to="#" className="col-content">
                  Events
                </Link>
                <Link to="#" className="col-content">
                  The Local Yelp
                </Link>
                <Link to="#" className="col-content">
                  Yelp Blog
                </Link>
                <Link to="#" className="col-content">
                  Support
                </Link>
                <Link to="#" className="col-content">
                  Yelp Mobile
                </Link>
                <Link to="#" className="col-content">
                  Developers
                </Link> */}
              </div>
              <div className="col-three col">
                <p className="col-title">Other Projects</p>
                <br />
                <div id="email-container">
                  <a href="https://lemikee.github.io/pokemon-Battle/">
                    Pokemon Battle!
                  </a>
                </div>
                {/* <Link to="#" className="col-content">
                  Claim your Business Page
                </Link>
                <Link to="#" className="col-content">
                  Advertise on Yelp
                </Link>
                <Link to="#" className="col-content">
                  Yelp for Resturant Owners
                </Link>
                <Link to="#" className="col-content">
                  Table Management
                </Link>
                <Link to="#" className="col-content">
                  Business Success Stories
                </Link>
                <Link to="#" className="col-content">
                  Business Support
                </Link>
                <Link to="#" className="col-content">
                  Yelp Blog for Business
                </Link> */}
              </div>
              <div className="col-four col">
                <p className="col-title">Languages</p>
                <br />
                <Link to="#" className="col-content">
                  English
                </Link>
                <br />
                <p className="col-title">Countries</p>
                <br />
                <Link to="#" className="col-content">
                  United States
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default SignupForm;
