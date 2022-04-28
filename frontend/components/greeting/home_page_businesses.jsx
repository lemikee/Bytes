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
              <Link to={"/restaurant/1"}>
                <div className="card-photo">
                  <img src="https://s3-media0.fl.yelpcdn.com/bphoto/pvWRWivkeyGy7g7UF9Me1g/o.jpg"></img>
                </div>
              </Link>
              <div className="card-content">
                <Link to={"/restaurant/2"}>
                  <div className="card-content-name">San Tung</div>
                </Link>
                <div className="card-content-category">Seafood, Asian</div>
                <div className="card-content-category">Sunset</div>
              </div>
            </div>
            <div className="hp-business-card">
              <Link to={"/restaurant/2"}>
                <div className="card-photo">
                  <img src="https://s3-media0.fl.yelpcdn.com/bphoto/GFiWHKO9cuZWak4kb7UV9w/o.jpg"></img>
                </div>
              </Link>
              <div className="card-content">
                <Link to={"/restaurant/13"}>
                  <div className="card-content-name">Mensho Tokyo</div>
                </Link>
                <div className="card-content-category">Japanese, Ramen</div>
                <div className="card-content-category">Lower Nob Hill</div>
              </div>
            </div>
            <div className="hp-business-card">
              <Link to={"/restaurant/3"}>
                <div className="card-photo">
                  <img src="https://s3-media0.fl.yelpcdn.com/bphoto/wVSjQbcmAoEuxp0y7ckx6w/o.jpg"></img>
                </div>
              </Link>
              <div className="card-content">
                <Link to={"/restaurant/3"}>
                  <div className="card-content-name">
                    Bob's Donut and Pastry Shop
                  </div>
                </Link>
                <div className="card-content-category">Breakfast, Bakery</div>
                <div className="card-content-category">Polk Gulch</div>
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
