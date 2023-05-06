enum SyncState {
  basic, loading, done, error;

  isLoading() => this == SyncState.loading;
  isDone() => this == SyncState.done;
  isError() => this == SyncState.error;
  isBasic() => this == SyncState.basic;
}