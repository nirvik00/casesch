class InfoLinks extends React.Component {
	constructor(props) {
		super(props);
	}
	render() {
		if (this.props.show === true) {
			return (
				<div>
					<br />
					<p>
						This is a REST-API project to generate building schema & validate
						such schema{' '}
					</p>
					<p>
						Details of Building Sync is{' '}
						<a
							href=' https://github.com/BuildingSync/TestSuite'
							target='_blank'>
							here
						</a>
					</p>
					<p>
						Our source code is &nbsp;
						<a href='https://github.com/nirvik00/casesch' target='_blank'>
							here
						</a>
					</p>
					<p>Some useful links w.r.t. SChematron:</p>
					<p>
						<a
							href='https://www.xfront.com/schematron/index.html'
							target='_blank'>
							{' '}
							xfront
						</a>
					</p>
					<p>
						<a
							href='https://upg-dh.newtfire.org/explainSchematron.html'
							target='_blank'>
							{' '}
							newtfire
						</a>
					</p>
					<p>
						<a
							href='https://www.xml.com/pub/a/2000/11/22/schematron.html'
							target='_blank'>
							{' '}
							xml
						</a>
					</p>
					<p>
						<a
							href='https://schematron.com/an-overview-of-schematron/why-is-schematron-different/'
							target='_blank'>
							{' '}
							Schematron Summary
						</a>
					</p>
					<p>
						<a
							href='https://standards.iso.org/ittf/PubliclyAvailableStandards/c055982_ISO_IEC_19757-3_2016.zip'
							target='_blank'>
							read the ISO{' '}
						</a>
					</p>
				</div>
			);
		} else {
			return <div></div>;
		}
	}
}
class InfoGenerate extends React.Component {
	constructor(props) {
		super(props);
	}
	render() {
		if (this.props.show === true) {
			return (
				<div>
					<br />
					<p>
						Get{' '}
						<a href='https://www.postman.com/' target='_blank'>
							Postman{' '}
						</a>{' '}
						or any other client for API development and testing
					</p>
					<p>
						in postman: select POST request, set header to
						multipart/form-dataitem as image below:
					</p>
					<p>
						<img src='/static/images/header.png' width='500' />
					</p>
					<p>
						Then add the csv file to be uploaded (sent) to the url live via
						Azure. for instance you can upload the file
						"BEQ_Mappings_medium.csv" from{' '}
						<a
							href='https://github.com/nirvik00/casesch/tree/master/data'
							target='_blank'>
							{' '}
							here{' '}
						</a>
					</p>
					<p>
						<img src='/static/images/generateSCH.jpg' width='500' />
					</p>
					<p>And expect an output like this:</p>
					<p>
						<img src='/static/images/generate_out.jpg' width='500' />
					</p>
				</div>
			);
		} else {
			return <div></div>;
		}
	}
}
class InfoValidate extends React.Component {
	constructor(props) {
		super(props);
	}
	render() {
		if (this.props.show === true) {
			return (
				<div>
					<p>
						<br />
						<p>
							Get{' '}
							<a href='https://www.postman.com/' target='_blank'>
								Postman{' '}
							</a>{' '}
							or any other client for API development and testing
						</p>
						<p>
							in postman: select POST request, set header to
							multipart/form-dataitem as image below:
						</p>
						<p>
							<img src='/static/images/header.png' width='500' />
						</p>
						<p>
							Then add the SCH file to be uploaded and the XML file to validate
							against. These files are sent to the server in Azure. For instance
							you can upload the file "BEQ_Mappings_medium.sch" and
							"BuildingSync_sample_medium_01.xml " from{' '}
							<a
								href='https://github.com/nirvik00/casesch/tree/master/data'
								target='_blank'>
								{' '}
								here{' '}
							</a>
						</p>
						<p>And expect an output like this:</p>
						<p>
							<img src='/static/images/validate_out.jpg' width='500' />
						</p>
					</p>
				</div>
			);
		} else {
			return <div></div>;
		}
	}
}
class InfoAbout extends React.Component {
	constructor(props) {
		super(props);
	}
	render() {
		if (this.props.show === true) {
			return (
				<div>
					<br />
					<p>
						This is a REST-API project to generate building schema & validate
						such schema{' '}
					</p>
					<p>
						Our source code is &nbsp;
						<a href='https://github.com/nirvik00/casesch' target='_blank'>
							here
						</a>
					</p>
				</div>
			);
		} else {
			return <div></div>;
		}
	}
}

class IntroComp extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			counterLink: 0,
			showLink: false,
			counterGet: 0,
			showGet: false,
			counterPost: 0,
			showPost: false,
			counterAbout: 0,
			showAbout: false,
		};
	}

	toggleLink() {
		this.state.counterLink++;
		if (this.state.counterLink % 2 > 0) {
			this.setState({ showLink: true });
		} else {
			this.setState({ showLink: false });
		}
	}

	toggleGet() {
		this.state.counterGet++;
		if (this.state.counterGet % 2 > 0) {
			this.setState({ showGet: true });
		} else {
			this.setState({ showGet: false });
		}
	}

	togglePost() {
		this.state.counterPost++;
		if (this.state.counterPost % 2 > 0) {
			this.setState({ showPost: true });
		} else {
			this.setState({ showPost: false });
		}
	}

	toggleAbout() {
		this.state.counterAbout++;
		if (this.state.counterAbout % 2 > 0) {
			this.setState({ showAbout: true });
		} else {
			this.setState({ showAbout: false });
		}
	}

	render() {
		return (
			<div>
				<button
					onClick={() => {
						this.toggleLink();
					}}>
					Links & Information
				</button>
				<InfoLinks
					show={this.state.showLink}
					counter={this.state.counterLink}
				/>
				<br />
				<button
					onClick={() => {
						this.toggleGet();
					}}>
					how to Generate .SCH File ?
				</button>
				<InfoGenerate
					show={this.state.showGet}
					counter={this.state.counterGet}
				/>
				<br />
				<button
					onClick={() => {
						this.togglePost();
					}}>
					how to Validate .SCH File?
				</button>
				<InfoValidate
					show={this.state.showPost}
					counter={this.state.counterPost}
				/>
				<br />
				<button
					onClick={() => {
						this.toggleAbout();
					}}>
					About
				</button>
				<InfoAbout
					show={this.state.showAbout}
					counter={this.state.counterAbout}
				/>
			</div>
		);
	}
}

ReactDOM.render(<IntroComp />, document.querySelector('#intro'));
