import React from "react";
import { Route } from "react-router-dom";
import { AuthRoute } from "../util/route_util";
import { Switch } from "react-router";
import Home from "./greeting/home";
// import LandingPage from "./landing_page/landing_page";
import NotFoundPage from "./not_found_page/not_found";
import LoginFormContainer from "./session/login_form_container";
import SignupFormContainer from "./session/signup_form_container";
import BusinessIndexContainer from "./business/business_index_container";
import BusinessShowContainer from "./business_show/business_show_container";
import CreateReviewFormContainer from "./review_form/create_review_form_container";
import EditReviewFormContainer from "./review_form/edit_review_form_container";
import BusinessSearchContainer from "./business/business_search_container";
import FooterComponent from "./greeting/footer";

const App = () => (
  <div>
    <Switch>
      <Route exact path="/" component={Home} />
      <AuthRoute path="/login" component={LoginFormContainer} />
      <AuthRoute path="/signup" component={SignupFormContainer} />
      <Route exact path="/businesses" component={BusinessIndexContainer} />
      <Route
        exact
        path="/businesses/:businessId"
        component={BusinessShowContainer}
      />
      <Route
        exact
        path="/businesses/:businessId/review"
        component={CreateReviewFormContainer}
      />
      <Route
        exact
        path="/businesses/:businessId/edit/:reviewId"
        component={EditReviewFormContainer}
      />
      <Route path="/businesses/search" component={BusinessSearchContainer} />
      <Route component={NotFoundPage} />
    </Switch>
      <Route path="/" component={FooterComponent} />
  </div>
);

export default App;
