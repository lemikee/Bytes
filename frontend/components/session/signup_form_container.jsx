import SignupForm from "./signup_form";
import { connect } from "react-redux";
import { signup } from "../../actions/session_actions";

const mapStateToProps = state => ({
  errors: state.ui.errors.sessionErrors,
  formType: 'Sign Up'
});

const mapDispatchToProps = dispatch => ({
  processForm: user => dispatch(signup(user))
});

export default connect(mapStateToProps, mapDispatchToProps)(SignupForm);
