import React from 'react';
import { Link } from 'react-router-dom';
import GreetingContainer from './greeting_container';
import SearchBarContainer from '../search/search_bar_container';
import HomePageBusinesses from './home_page_businesses';
import Logo from "../logo/logo";

const Home = () => {

    return (
      <div>
        <header className="main-header">
          <div className={`header-image header-image background-tint`}>
            <div className="header-content">
              <div className="nav-main">
                <div className="nav-left">
                  <ul className="nav-content">
                    <Link to={"/businesses"}>
                      <li className="header-item">List of Businesses</li>
                    </Link>
                    <a href="https://github.com/lemikee">
                      <li className="header-item">Github</li>
                    </a>
                    <a href="https://www.linkedin.com/in/mike-le/">
                      <li className="header-item">LinkedIn</li>
                    </a>
                  </ul>
                </div>
                <div className="nav-right">
                  <GreetingContainer path="home" />
                </div>
              </div>

              <div className="header-main">
                <div className="header-logo-center">
                  <h1 className="header-logo">
                    <Logo />
                  </h1>
                </div>

                <SearchBarContainer placeholder="try searching Italian, donuts, or fish and chips..." />
              </div>
            </div>
          </div>
        </header>
        <HomePageBusinesses />
      </div>
    );
};

export default Home;