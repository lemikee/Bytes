import React from 'react';
import ButtonMailto from "../email/email";

const Footer = () => (
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
          <a href="https://lemikee.github.io/pokemon-battle/">
            Pokemon Battle!
          </a>
        </div>
      </div>
      <div className="col-four col">
        <p className="col-title">Language</p>
        <br />
        <p to="#" className="col-content">
          English
        </p>
        <br />
        <p className="col-title">Country</p>
        <br />
        <p to="#" className="col-content">
          United States
        </p>
      </div>
    </div>
  </div>
);


export default Footer;