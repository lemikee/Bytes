import React from "react";
import { Link } from "react-router-dom";
import Logo from "../logo/logo";
const NotFoundNav = (props) => (
  <Link to="/" className="not-found-bar">
    <Logo />
  </Link>
);

export default NotFoundNav;
