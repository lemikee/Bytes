import React from "react";
import { Link } from "react-router-dom";
import ButtonMailto from "../email/email";
// import Resume from "../../../app/assets/documents/Resume.pdf";
import CustomModal from "../modal/about_modal";

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemo = this.handleDemo.bind(this);
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.processForm(this.state);
  }

  handleDemo() {
    this.props.processForm({ email: "hire@me.com", password: "password" });
  }

  componentWillUnmount() {
    this.props.removeErrors();
  }

  render() {
    return (
      <div className="login-page">
        <div className="form-page">
          <div className="login-signup-nav">
            <Link to="/" className="nav-bar">
              <p className="login-sign-up-name">Bytes</p>
              <i className="fab fa-yelp fa-lg"></i>
            </Link>
          </div>

          <div className="form-content">
            <div className="session-container">
              <h2>Log in to Bytes</h2>
              <p className="subheading">
                New to Bytes?{" "}
                <Link to="/signup" className="blue-link">
                  Sign Up
                </Link>
              </p>
              <p className="legal">
                By logging in, you agree to Bytes'
                <Link to="#">Terms of Service</Link> and
                <Link to="#">Privacy Policy</Link>
              </p>
              <form className="session-form">
                <input
                  type="email"
                  placeholder="Email"
                  value={this.state.email}
                  onChange={this.update("email")}
                />

                <input
                  type
                  type="password"
                  value={this.state.password}
                  onChange={this.update("password")}
                  placeholder="Password"
                />
                <Link to="#" className="align-right">
                  Forgot password?
                </Link>
                <button
                  className="signup-login-btn"
                  onClick={this.handleSubmit}
                >
                  Log In
                </button>
                <p className="align-right">
                  New to Bytes? <Link to="/signup">Sign Up</Link>
                </p>
                <div className="middle-or">
                  <h3 id="line">OR</h3>
                </div>
                <button className="signup-login-btn" onClick={this.handleDemo}>
                  Demo Log In
                </button>
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



              </div>
              <div className="col-two col">
                <p className="col-title">Discover</p>
                <br />



                <div id="email-container">
                  <ButtonMailto
                    className="email-me"
                    label="Email"
                    mailto="mailto:lemichael@berkeley.edu"
                  />
                </div>

              </div>
              <div className="col-three col">
                <p className="col-title">Other Projects</p>
                <br />
                <div id="email-container">
                  <a href="https://lemikee.github.io/pokemon-Battle/">
                    Pokemon Battle!
                  </a>
                </div>

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

export default LoginForm;
