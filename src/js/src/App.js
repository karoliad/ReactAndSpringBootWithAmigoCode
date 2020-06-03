import React, { Component } from 'react';
import Container from './Container';
import Footer from './Footer';
import './App.css';
import { getAllStudents } from './client';
import AddStudentForm from './forms/AddStudentForm';
import { errorNotification } from './Notification';
import {
  Table,
  Avatar,
  Spin,
  Modal,
  Empty
} from 'antd';
import { LoadingOutlined } from '@ant-design/icons';

const getIndicatorIcon = () => <LoadingOutlined spin style={{ fontSize: 24 }} />

class App extends Component {

  state = {
    students: [],
    isFetching: false,
    isAddStudentModalVisible: false
  }

  componentDidMount() {
    this.fetchStudets();
  }

  OpenAddStudentModal = () => this.setState({ isAddStudentModalVisible: true })

  CloseAddStudentModal = () => this.setState({ isAddStudentModalVisible: false })


  fetchStudets = () => {
    this.setState({
      isFetching: true
    });
    getAllStudents()
      .then(res => res.json()
        .then(students => {
          console.log(students);
          this.setState({
            students,
            isFetching: false
          });
        }))
      .catch(error => {
        console.log(error.error);
        const errorObj = error.error.message;  //"cannot get students"; //skulle vært error.error.message, men message klarer ikke hente fra studentController
        const descriptionObj = error.error.error;
        errorNotification(errorObj, descriptionObj);
        this.setState({
          isFetching: false
        });
      });
  }

  render() {
    const { students, isFetching, isAddStudentModalVisible } = this.state;

    const commonElements = () => (
      <div>
        <Modal
          title='Add new student'
          visible={isAddStudentModalVisible}
          onOk={this.CloseAddStudentModal}
          onCancel={this.CloseAddStudentModal}
          width={1000}>
          <AddStudentForm
            onSuccess={() => {
              this.CloseAddStudentModal();
              this.fetchStudets()
            }}
            onFailure={(error) => {
              const message = error.error.message;  
              const description = error.error.httpStatus;
              errorNotification(message, description);
            }}
          />
        </Modal>
        <Footer
          numberOfStudents={students.length}
          handleAddStudentClickEvent={this.OpenAddStudentModal} />
      </div>
    )

    if (isFetching) {
      return (
        <Container>
          <Spin indicator={getIndicatorIcon} />
        </Container>
      );
    }

    if (students && students.length) {

      const columns = [

        {
          title: '',
          key: 'avatar',
          render: (text, student) => (
            <Avatar size='large'>
              {`${student.firstName.charAt(0).toUpperCase()}${student.lastName.charAt(0).toUpperCase()}`}
            </Avatar>
          )
        },
        {
          title: 'student Id',
          dataIndex: 'studentId',
          key: 'studentId'
        },
        {
          title: 'First Name',
          dataIndex: 'firstName',
          key: 'firstName'
        },
        {
          title: 'Last Name',
          dataIndex: 'lastName',
          key: 'lastName'
        },
        {
          title: 'Email',
          dataIndex: 'email',
          key: 'email'
        },
        {
          title: 'Gender',
          dataIndex: 'gender',
          key: 'gender'
        }
      ];
      return (
        <Container>
          <Table
            style={{ marginBottom: '100px' }}
            dataSource={students}
            columns={columns}
            pagination={false}
            rowKey='studentId' />
          {commonElements()}
        </Container>
      );
    }

    return (
      <Container><Empty description={
        <h1>No student found</h1>
      } />
      {commonElements()}
      </Container>
    )
  }

}

export default App;