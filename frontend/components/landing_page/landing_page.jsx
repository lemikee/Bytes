import React from "react";
import NavBarContainer from "../nav_bar/nav_bar_container";
import SearchBar from "../search_bar/search_bar";
import Logo from "../logo/logo";
import ButtonMailto from "../email/email";
import { Link } from "react-router-dom";

const LandingPage = (props) => (
  <div>
    <NavBarContainer />
    <div className="logoContainer">
      {/* <h1 id="logo">Bytes</h1> */}
      <Logo />
      {/* <SearchBar /> */}
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
);

export default LandingPage;
