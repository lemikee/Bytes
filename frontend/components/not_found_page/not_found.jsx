import React from "react";
import { Link } from "react-router-dom";
import NotFoundNav from "../nav_bar/not_found_nav_bar";
const NotFoundPage = () => (
  <div id="not-found">
    <div className="login-signup-nav">
      <div className="not-found-header">
        <Link to="/" className="nav-bar not-found-logo">
          <img src="https://i.imgur.com/O4ddFlG.png"></img>
        </Link>
      </div>
    </div>
    <div id="not-found-text-container">
      <Link to="/" className="">
        <h2 id="">
          <span id="not-found-message">404 Error</span>
          <br />
          Oh No! Looks like you took a wrong turn!
          <br />
          No worries, Waffle the cat is here to get you back on track!
        </h2>

      <img src="https://i.imgur.com/hXuAP8S.png" id="not-found-cat"></img>
      </Link>
    </div>
  </div>
);

export default NotFoundPage;
