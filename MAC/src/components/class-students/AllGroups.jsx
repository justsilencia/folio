import React, { Component } from 'react';
import ReactExport from "react-data-export";

const ExcelFile = ReactExport.ExcelFile;
const ExcelSheet = ReactExport.ExcelFile.ExcelSheet;

class AllGroups extends Component {

    constructor(props) {
        super(props);

        this.state = {
            groupStudents: [],
            excelData: []
        }

        this.formatExcelData = this.formatExcelData.bind(this);
    }

    componentDidMount() {
        fetch('http://localhost:4001/getallgroups/', {
            method: 'GET',
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json'
            }
        }).then(res => {
            return res.json();
        }).then(data => {
            this.setState({groupStudents: data}, () => this.formatExcelData());
        });
    }

    formatExcelData() {
        const formattedData = [];
        const dateObj = new Date();
        const formattedDate = (dateObj.getMonth()+1) + '/' + dateObj.getDate() + '/' + dateObj.getFullYear();

        // Loop through each group, create an excel worksheet (tab)
        // displaying students for each group.
        this.state.groupStudents.forEach((currGroup, i) => {

            formattedData.push([]);

            currGroup.classes.forEach((currClass, ii) => {

                formattedData[i].push({
                    columns: [
                        {title: ' ', width: {wpx: 130}},
                        {title: ' ', width: {wpx: 75}},
                        {title: ' ', width: {wpx: 220}},
                        {title: ' ', width: {wpx: 65}},
                        {title: ' ', width: {wpx: 30}},
                        {title: ' ', width: {wpx: 30}},
                        {title: ' ', width: {wpx: 30}},
                        {title: ' ', width: {wpx: 30}},
                        {title: ' ', width: {wpx: 30}},
                        {title: ' ', width: {wpx: 30}},
                        {title: ' ', width: {wpx: 30}},
                        {title: ' ', width: {wpx: 30}},
                        {title: ' ', width: {wpx: 30}}
                    ],
                    data: [],
                    groupName: currGroup.group
                });

                formattedData[i][ii].data.push([
                    {value: ' '}
                ]);

                formattedData[i][ii].data.push([
                    {
                        value: currClass.teacher,
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    }
                ]);

                formattedData[i][ii].data.push([
                    {
                        value: currClass.className + ' -- AM',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: formattedDate,
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    }
                ]);

                formattedData[i][ii].data.push([
                    {
                        value: '#',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'DC#',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'Name',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'Housing',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LR',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LM1',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LM2',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LL',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'R1',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'R2',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'M1',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'M2',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LA',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    }
                ]);

                // Now iterate over AM students.

                currClass.studentsAM.forEach((stu, iii) => {
                    formattedData[i][ii].data.push([
                        {
                            value: iii+1,
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: stu.dc,
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: stu.lastname + ', ' + stu.firstname,
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: stu.housing,
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        }
                    ])
                });

                formattedData[i][ii].data.push([
                    {value: ' '}
                ]);

                formattedData[i][ii].data.push([
                    {
                        value: currClass.teacher,
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    }
                ]);

                formattedData[i][ii].data.push([
                    {
                        value: currClass.className + ' -- PM',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: formattedDate,
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    }
                ]);

                formattedData[i][ii].data.push([
                    {
                        value: '#',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'DC#',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'Name',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'Housing',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LR',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LM1',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LM2',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LL',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'R1',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'R2',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'M1',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'M2',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    },
                    {
                        value: 'LA',
                        style: {
                            border: {
                                top: { style: "thin" },
                                bottom: { style: "thin" },
                                right: { style: "thin" },
                                left: { style: "thin" }
                            },
                            font: {bold: true}
                        }
                    }
                ]);

                // Iterate over PM students.

                currClass.studentsPM.forEach((stu, iii) => {
                    formattedData[i][ii].data.push([
                        {
                            value: iii+1,
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: stu.dc,
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: stu.lastname + ', ' + stu.firstname,
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: stu.housing,
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        },
                        {
                            value: ' ',
                            style: {
                                border: {
                                    top: { style: "thin" },
                                    bottom: { style: "thin" },
                                    right: { style: "thin" },
                                    left: { style: "thin" }
                                }
                            }
                        }
                    ])
                });

            });
        });

        this.setState({excelData: formattedData});
    }

    render() {
        let renderExcel = [];

        this.state.excelData.forEach((item, i) => {
            if (item[0]) {
                renderExcel.push(
                    <ExcelSheet key={i} dataSet={item} name={item[0].groupName} />
                )
            }
        });

        return (
            <div className='mt-3'>
                <center>
                    {
                        <ExcelFile element={<button className='btn btn-info'>Download Spreadsheet</button>}>
                            { 
                                renderExcel? renderExcel : ''
                            }
                        </ExcelFile>
                    }
                </center>
            </div>
        );
    }
}

export default AllGroups;