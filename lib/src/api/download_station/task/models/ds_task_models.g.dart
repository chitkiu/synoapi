// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ds_task_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTaskInfo _$ListTaskInfoFromJson(Map<String, dynamic> json) => ListTaskInfo(
      total: json['total'] as int,
      offset: json['offset'] as int,
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => DownloadStationTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListTaskInfoToJson(ListTaskInfo instance) =>
    <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'tasks': instance.tasks,
    };

DownloadStationTask _$DownloadStationTaskFromJson(Map<String, dynamic> json) =>
    DownloadStationTask(
      id: json['id'] as String,
      type: $enumDecode(_$TaskTypeEnumMap, json['type']),
      username: json['username'] as String?,
      title: json['title'] as String?,
      size: json['size'] as int?,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      statusExtra: json['status_extra'] == null
          ? null
          : StatusExtra.fromJson(json['status_extra'] as Map<String, dynamic>),
      additional: json['additional'] == null
          ? null
          : Additional.fromJson(json['additional'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DownloadStationTaskToJson(
        DownloadStationTask instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$TaskTypeEnumMap[instance.type]!,
      'username': instance.username,
      'title': instance.title,
      'size': instance.size,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'status_extra': instance.statusExtra,
      'additional': instance.additional,
    };

const _$TaskTypeEnumMap = {
  TaskType.bt: 'bt',
};

const _$TaskStatusEnumMap = {
  TaskStatus.waiting: 'waiting',
  TaskStatus.downloading: 'downloading',
  TaskStatus.paused: 'paused',
  TaskStatus.finishing: 'finishing',
  TaskStatus.finished: 'finished',
  TaskStatus.hash_checking: 'hash_checking',
  TaskStatus.seeding: 'seeding',
  TaskStatus.filehosting_waiting: 'filehosting_waiting',
  TaskStatus.extracting: 'extracting',
  TaskStatus.error: 'error',
};

Additional _$AdditionalFromJson(Map<String, dynamic> json) => Additional(
      detail: json['detail'] == null
          ? null
          : TaskDetail.fromJson(json['detail'] as Map<String, dynamic>),
      transfer: json['transfer'] == null
          ? null
          : TaskTransfer.fromJson(json['transfer'] as Map<String, dynamic>),
      file: (json['file'] as List<dynamic>?)
          ?.map((e) => TaskFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      tracker: (json['tracker'] as List<dynamic>?)
          ?.map((e) => TaskTracker.fromJson(e as Map<String, dynamic>))
          .toList(),
      peer: (json['peer'] as List<dynamic>?)
          ?.map((e) => TaskPeer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdditionalToJson(Additional instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'transfer': instance.transfer,
      'file': instance.file,
      'tracker': instance.tracker,
      'peer': instance.peer,
    };

StatusExtra _$StatusExtraFromJson(Map<String, dynamic> json) => StatusExtra(
      errorDetail: json['error_detail'] as String?,
      unzipProgress: json['unzip_progress'] as int?,
    );

Map<String, dynamic> _$StatusExtraToJson(StatusExtra instance) =>
    <String, dynamic>{
      'error_detail': instance.errorDetail,
      'unzip_progress': instance.unzipProgress,
    };

TaskDetail _$TaskDetailFromJson(Map<String, dynamic> json) => TaskDetail(
      destination: json['destination'] as String?,
      uri: json['uri'] as String?,
      createTime:
          const DateTimeEpochConverter().fromJson(json['create_time'] as int?),
      startedTime:
          const DateTimeEpochConverter().fromJson(json['started_time'] as int?),
      completedTime: const DateTimeEpochConverter()
          .fromJson(json['completed_time'] as int?),
      priority: json['priority'] as String?,
      totalPeers: json['total_peers'] as int?,
      connectedSeeders: json['connected_seeders'] as int?,
      connectedLeechers: json['connected_leechers'] as int?,
      connectedPeers: json['connected_peers'] as int?,
      seedElapsed: json['seedelapsed'] as int?,
      unzipPassword: json['unzip_password'] as String?,
      waitingSeconds: json['waiting_seconds'] as int?,
      totalPieces: json['total_pieces'] as int?,
    );

Map<String, dynamic> _$TaskDetailToJson(TaskDetail instance) =>
    <String, dynamic>{
      'destination': instance.destination,
      'uri': instance.uri,
      'create_time': const DateTimeEpochConverter().toJson(instance.createTime),
      'started_time':
          const DateTimeEpochConverter().toJson(instance.startedTime),
      'completed_time':
          const DateTimeEpochConverter().toJson(instance.completedTime),
      'priority': instance.priority,
      'total_peers': instance.totalPeers,
      'connected_seeders': instance.connectedSeeders,
      'connected_leechers': instance.connectedLeechers,
      'connected_peers': instance.connectedPeers,
      'seedelapsed': instance.seedElapsed,
      'unzip_password': instance.unzipPassword,
      'waiting_seconds': instance.waitingSeconds,
      'total_pieces': instance.totalPieces,
    };

TaskTransfer _$TaskTransferFromJson(Map<String, dynamic> json) => TaskTransfer(
      downloadedPieces: json['downloaded_pieces'] as int?,
      sizeDownloaded: json['size_downloaded'] as int?,
      sizeUploaded: json['size_uploaded'] as int?,
      speedDownload: json['speed_download'] as int?,
      speedUpload: json['speed_upload'] as int?,
    );

Map<String, dynamic> _$TaskTransferToJson(TaskTransfer instance) =>
    <String, dynamic>{
      'downloaded_pieces': instance.downloadedPieces,
      'size_downloaded': instance.sizeDownloaded,
      'size_uploaded': instance.sizeUploaded,
      'speed_download': instance.speedDownload,
      'speed_upload': instance.speedUpload,
    };

TaskFile _$TaskFileFromJson(Map<String, dynamic> json) => TaskFile(
      filename: json['filename'] as String?,
      index: json['index'] as int?,
      size: json['size'] as int?,
      sizeDownloaded: json['size_downloaded'] as int?,
      priority: json['priority'] as String?,
      wanted: json['wanted'] as bool?,
    );

Map<String, dynamic> _$TaskFileToJson(TaskFile instance) => <String, dynamic>{
      'filename': instance.filename,
      'index': instance.index,
      'size': instance.size,
      'size_downloaded': instance.sizeDownloaded,
      'priority': instance.priority,
      'wanted': instance.wanted,
    };

TaskTracker _$TaskTrackerFromJson(Map<String, dynamic> json) => TaskTracker(
      url: json['url'] as String?,
      status: json['status'] as String?,
      updateTimer: json['update_timer'] as int?,
      seeds: json['seeds'] as int?,
      peers: json['peers'] as int?,
    );

Map<String, dynamic> _$TaskTrackerToJson(TaskTracker instance) =>
    <String, dynamic>{
      'url': instance.url,
      'status': instance.status,
      'update_timer': instance.updateTimer,
      'seeds': instance.seeds,
      'peers': instance.peers,
    };

TaskPeer _$TaskPeerFromJson(Map<String, dynamic> json) => TaskPeer(
      address: json['address'] as String?,
      agent: json['agent'] as String?,
      progress: json['progress'] as num?,
      speedDownload: json['speed_download'] as int?,
      speedUpload: json['speed_upload'] as int?,
    );

Map<String, dynamic> _$TaskPeerToJson(TaskPeer instance) => <String, dynamic>{
      'address': instance.address,
      'agent': instance.agent,
      'progress': instance.progress,
      'speed_download': instance.speedDownload,
      'speed_upload': instance.speedUpload,
    };

DownloadStationTaskActionResponse _$DownloadStationTaskActionResponseFromJson(
        Map<String, dynamic> json) =>
    DownloadStationTaskActionResponse(
      json['id'] as String?,
      json['error'] as int?,
    );

Map<String, dynamic> _$DownloadStationTaskActionResponseToJson(
        DownloadStationTaskActionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'error': instance.error,
    };
