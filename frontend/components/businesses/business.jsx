import React from "react";
import Reviews from "../reviews/reviews";
import ReviewsContainer from "../reviews/reviews_container";
import SocialBar from "../business_components/social_bar";
class Business extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchBusiness();
  }

  render() {
    if (this.props.business) {
      const {
        business_name,
        address,
        zip_code,
        state = "",
        hours,
        description,
      } = this.props.business;

      return (
        <div className="business-show">
          <div className="show-head">
            <img></img>
            <div>
              <h1 id="title">{business_name}</h1>

            </div>
          </div>
          <div className="business-content">
            <div className="left-content">
              <SocialBar />
              {/* <hr /> */}
              <ReviewsContainer businessId={this.props.business.id} />
            </div>
            <div className="side-bar-info">
              <ul>


                <li>
                  {/* <p>Get Directions</p> */}
                  <br/>
                  <p>Address:</p>
                  <p>{address}</p>
                  <br/>
                  <p>Description</p>
                  <p>{description}</p>
                  <p>
                    {state} {zip_code}
                  </p>

                  <br/>

                  <p>Reviews:</p>
                  <p>By: Every App Academy Student</p>
                  <p>Before a/A, I had $17k more dollars, a normal sleep schedule, and terrible coding skills. Now I have better coding skills but none of the other two.</p>
                </li>
              </ul>
            </div>
          </div>
        </div>
      );
    } else {
      return <div></div>;
    }
  }
}

export default Business;
