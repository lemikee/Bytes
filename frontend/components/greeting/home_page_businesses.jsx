import React from "react";
import { Link } from "react-router-dom";

const HomePageBusinesses = () => {
  return (
    <div className="home-page-businesses-container">
      <div className="home-page-businesses-arrange">
        <div className="hp-business-list-container">
          <h2>Popular Businesses</h2>
          <div className="hp-business-list-arrange">
            <div className="hp-business-card">
              <Link to={"/businesses/1"}>
                <div className="card-photo">
                  <img src="https://i.imgur.com/KWfOeZG.jpg"></img>
                </div>
              </Link>
              <div className="card-content">
                <Link to={"/businesses/1"}>
                  <div className="card-content-name">Fog Harbor Fish House</div>
                </Link>
                <div className="card-content-category">Seafood, Bars</div>
                <div className="card-content-category">Fisherman's Wharf</div>
              </div>
            </div>
            <div className="hp-business-card">
              <Link to={"/businesses/2"}>
                <div className="card-photo">
                  <img src="https://i.imgur.com/OGdpiCo.jpg"></img>
                </div>
              </Link>
              <div className="card-content">
                <Link to={"/businesses/2"}>
                  <div className="card-content-name">Marufuku Ramen</div>
                </Link>
                <div className="card-content-category">Japanese, Ramen</div>
                <div className="card-content-category">Japan Center</div>
              </div>
            </div>
            <div className="hp-business-card">
              <Link to={"/businesses/3"}>
                <div className="card-photo">
                  <img src="https://i.imgur.com/8RSWlLE.jpg"></img>
                </div>
              </Link>
              <div className="card-content">
                <Link to={"/businesses/3"}>
                  <div className="card-content-name">The House</div>
                </Link>
                <div className="card-content-category">Asian Fusion</div>
                <div className="card-content-category">North Beach</div>
              </div>
            </div>
          </div>

          <div className="link-to-businesses">
            <Link to={"/businesses"}>See more popular businesses</Link>
          </div>
        </div>
      </div>
    </div>
  );
};

export default HomePageBusinesses;
