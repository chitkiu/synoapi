import 'package:json_annotation/json_annotation.dart';

import '../../../../util/util.dart';

part 'ds_task_models.g.dart';

enum TaskStatus {
  waiting,
  downloading,
  paused,
  finishing,
  finished,
  hash_checking,
  seeding,
  filehosting_waiting,
  extracting,
  error
}

enum TaskType {
  bt
}

@JsonSerializable()
class ListTaskInfo {
  int total = 0;
  int offset = 0;
  List<DownloadStationTask> tasks = [];

  ListTaskInfo({required this.total, required this.offset, required this.tasks});

  factory ListTaskInfo.fromJson(Map<String, dynamic> json) => _$ListTaskInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ListTaskInfoToJson(this);
}

@JsonSerializable()
class DownloadStationTask {
  String id;
  TaskType type;
  String? username;
  String? title;
  int? size;
  TaskStatus status;
  @JsonKey(name: 'status_extra')
  StatusExtra? statusExtra;
  Additional? additional;

  DownloadStationTask({required this.id, required this.type, this.username, this.title, this.size, required this.status, this.statusExtra, this.additional});

  factory DownloadStationTask.fromJson(Map<String, dynamic> json) => _$DownloadStationTaskFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadStationTaskToJson(this);
}

@JsonSerializable()
class Additional {
  TaskDetail? detail;
  TaskTransfer? transfer;
  List<TaskFile>? file;
  List<TaskTracker>? tracker;
  List<TaskPeer>? peer;

  Additional({this.detail, this.transfer, this.file, this.tracker, this.peer});

  factory Additional.fromJson(Map<String, dynamic> json) => _$AdditionalFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalToJson(this);
}

@JsonSerializable()
class StatusExtra {
  @JsonKey(name: 'error_detail')
  String? errorDetail;
  @JsonKey(name: 'unzip_progress')
  int? unzipProgress;

  StatusExtra({this.errorDetail, this.unzipProgress});

  factory StatusExtra.fromJson(Map<String, dynamic> json) => _$StatusExtraFromJson(json);

  Map<String, dynamic> toJson() => _$StatusExtraToJson(this);
}

@JsonSerializable()
@DateTimeEpochConverter()
class TaskDetail {
  String? destination;
  String? uri;
  @JsonKey(name: 'create_time')
  DateTime? createTime;
  @JsonKey(name: 'started_time')
  DateTime? startedTime;
  @JsonKey(name: 'completed_time')
  DateTime? completedTime;
  String? priority;
  @JsonKey(name: 'total_peers')
  int? totalPeers;
  @JsonKey(name: 'connected_seeders')
  int? connectedSeeders;
  @JsonKey(name: 'connected_leechers')
  int? connectedLeechers;
  @JsonKey(name: 'connected_peers')
  int? connectedPeers;
  @JsonKey(name: 'seedelapsed')
  int? seedElapsed;
  @JsonKey(name: 'unzip_password')
  String? unzipPassword;
  @JsonKey(name: 'waiting_seconds')
  int? waitingSeconds;
  @JsonKey(name: 'total_pieces')
  int? totalPieces;

  TaskDetail({
    this.destination,
    this.uri,
    this.createTime,
    this.startedTime,
    this.completedTime,
    this.priority,
    this.totalPeers,
    this.connectedSeeders,
    this.connectedLeechers,
    this.connectedPeers,
    this.seedElapsed,
    this.unzipPassword,
    this.waitingSeconds,
    this.totalPieces
  });

  factory TaskDetail.fromJson(Map<String, dynamic> json) => _$TaskDetailFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDetailToJson(this);
}

@JsonSerializable()
class TaskTransfer {
  @JsonKey(name: 'downloaded_pieces')
  int? downloadedPieces;
  @JsonKey(name: 'size_downloaded')
  int? sizeDownloaded;
  @JsonKey(name: 'size_uploaded')
  int? sizeUploaded;
  @JsonKey(name: 'speed_download')
  int? speedDownload;
  @JsonKey(name: 'speed_upload')
  int? speedUpload;

  TaskTransfer({this.downloadedPieces, this.sizeDownloaded, this.sizeUploaded, this.speedDownload, this.speedUpload});

  factory TaskTransfer.fromJson(Map<String, dynamic> json) => _$TaskTransferFromJson(json);

  Map<String, dynamic> toJson() => _$TaskTransferToJson(this);
}

@JsonSerializable()
class TaskFile {
  String? filename;
  int? index;
  int? size;
  @JsonKey(name: 'size_downloaded')
  int? sizeDownloaded;
  String? priority;
  bool? wanted;

  TaskFile({this.filename, this.index, this.size, this.sizeDownloaded, this.priority, this.wanted});

  factory TaskFile.fromJson(Map<String, dynamic> json) => _$TaskFileFromJson(json);

  Map<String, dynamic> toJson() => _$TaskFileToJson(this);
}

@JsonSerializable()
class TaskTracker {
  String? url;
  String? status;
  @JsonKey(name: 'update_timer')
  int? updateTimer;
  int? seeds;
  int? peers;

  TaskTracker({this.url, this.status, this.updateTimer, this.seeds, this.peers});

  factory TaskTracker.fromJson(Map<String, dynamic> json) => _$TaskTrackerFromJson(json);

  Map<String, dynamic> toJson() => _$TaskTrackerToJson(this);
}

@JsonSerializable()
class TaskPeer {
  String? address;
  String? agent;
  num? progress;
  @JsonKey(name: 'speed_download')
  int? speedDownload;
  @JsonKey(name: 'speed_upload')
  int? speedUpload;

  TaskPeer({this.address, this.agent, this.progress, this.speedDownload, this.speedUpload});

  factory TaskPeer.fromJson(Map<String, dynamic> json) => _$TaskPeerFromJson(json);

  Map<String, dynamic> toJson() => _$TaskPeerToJson(this);
}

@JsonSerializable()
class DownloadStationTaskActionResponse {
  String? id;
  int? error;

  bool get isSuccess => error == null || error == 0;

  DownloadStationTaskActionResponse(this.id, this.error);

  factory DownloadStationTaskActionResponse.fromJson(Map<String, dynamic> json) =>
      _$DownloadStationTaskActionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadStationTaskActionResponseToJson(this);
}
