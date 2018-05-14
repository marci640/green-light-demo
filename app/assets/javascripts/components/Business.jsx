class Business extends React.Component {
  constructor (props) {
    super(props);
    this.state = { 
      businesses: this.props.businesses, 
    };
  }

  render() {
    return (
    <div>
      { 
        this.state.businesses.map((business, index) => (
          <div className="card" >
            <p> {business.business_name} </p>
            <a href='/' className="btn btn-primary">Go somewhere</a>
          </div>
          ))
        }
    </div>
    );
  }
}


