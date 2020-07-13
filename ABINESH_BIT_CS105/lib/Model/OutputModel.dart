class OutPutModel {
  String compileOutput;
  int memory;
  String message;
  Status status;
  String stderr;
  String stdout;
  String time;
  String token;

  OutPutModel(
      {this.compileOutput,
      this.memory,
      this.message,
      this.status,
      this.stderr,
      this.stdout,
      this.time,
      this.token});

  factory OutPutModel.fromMap(object) {
    return OutPutModel(
        compileOutput: object['compile_output'],
        memory: object['memory'],
        message: object['message'],
        status: Status.fromJson(object['status']),
        stderr: object['stderr'],
        stdout: object['stdout'],
        time: object['time'],
        token: object['token']);
  }
}

class Status {
  int id;
  String description;

  Status({this.id, this.description});

  factory Status.fromJson(response) {
    return Status(id: response['id'], description: response['description']);
  }
}
