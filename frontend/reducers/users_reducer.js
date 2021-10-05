import { RECEIVE_CURRENT_USER } from "../actions/session_actions";
import { RECEIVE_REVIEW } from "../actions/review_actions";
import {
  RECEIVE_BUSINESS,
  RECEIVE_BUSINESSES,
} from "../actions/business_actions";

import merge from "lodash/merge";

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = Object.assign({}, state);
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      newState[action.currentUser.id] = action.currentUser;
      return newState;
    case RECEIVE_REVIEW:
      return merge({}, state, { [action.author.id]: action.author });
    case RECEIVE_BUSINESS:
      return merge({}, state, action.authors);
    case RECEIVE_BUSINESSES:
      return merge({}, state, action.authors);
    default:
      return state;
  }
};

export default usersReducer;
