import React from 'react'

class SearchBar extends React.Component{
    constructor(props){
        super(props)
        this.state={
            find: '',
            near: '',
        }
    }
    render(){
        return(
            <div className='search-bar'>

            </div>
        )
    }
}

export default SearchBar