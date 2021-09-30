import React from "react";
import { Route } from "react-router";
import { AuthRoute } from "../util/route_util";
import LoginFormContainer from "./session/login_form_container";
import SignupFormContainer from "./session/signup_form_container";
import LandingPage from "./landing_page/landing_page";
import NotFoundPage from "./not_found_page/not_found";
import { Switch } from "react-router";
import BusinessesContainer from "./businesses/businesses_container";
import BusinessContainer from "./businesses/business_container";

const App = () => (
  <div>
    <Switch>
      <AuthRoute path="/login" component={LoginFormContainer} />
      <AuthRoute path="/signup" component={SignupFormContainer} />
      <Route path="/businesses/:id" component={BusinessContainer} />
      <Route exact path="/businesses" component={BusinessesContainer} />
      <Route exact path="/" component={LandingPage} />
      <Route component={NotFoundPage} />
      {/* <Redirect to="/" /> */}
    </Switch>
  </div>
);

export default App;
