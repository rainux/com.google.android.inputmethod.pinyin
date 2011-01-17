.class public Lcom/google/android/inputmethod/pinyin/SyncTask;
.super Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;
.source "SyncTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncTask"

.field private static final TIMEOUT:I = 0x1388

.field private static final UPLOAD_AT_LEAST:I = 0x1

.field private static mInstance:Lcom/google/android/inputmethod/pinyin/SyncTask;


# instance fields
.field private volatile mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

.field private mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

.field private mRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mInstance:Lcom/google/android/inputmethod/pinyin/SyncTask;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;)V
    .registers 5
    .parameter "ctxt"
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 39
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mRunning:Z

    .line 40
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mCanceled:Z

    .line 42
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    .line 45
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 47
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;Lcom/google/android/inputmethod/pinyin/SyncEngine;)Lcom/google/android/inputmethod/pinyin/SyncTask;
    .registers 4
    .parameter "ctxt"
    .parameter "service"
    .parameter "engine"

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mInstance:Lcom/google/android/inputmethod/pinyin/SyncTask;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/google/android/inputmethod/pinyin/SyncTask;

    invoke-direct {v0, p0, p1}, Lcom/google/android/inputmethod/pinyin/SyncTask;-><init>(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mInstance:Lcom/google/android/inputmethod/pinyin/SyncTask;

    .line 53
    :cond_b
    sget-object v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mInstance:Lcom/google/android/inputmethod/pinyin/SyncTask;

    iput-object p2, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    .line 54
    sget-object v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mInstance:Lcom/google/android/inputmethod/pinyin/SyncTask;

    return-object v0
.end method

.method private runInner()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x3

    const-string v13, "\'"

    const-string v10, "SyncTask"

    .line 73
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    if-nez v6, :cond_1b

    .line 74
    const-string v6, "SyncTask"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 75
    const-string v6, "SyncTask"

    const-string v6, "Task aborted: unbinded IME service."

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1a
    :goto_1a
    return-void

    .line 79
    :cond_1b
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3b

    .line 80
    const-string v6, "SyncTask"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 81
    const-string v6, "SyncTask"

    const-string v6, "Task aborted: empty credentials."

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 85
    :cond_3b
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getSyncEnabled()Z

    move-result v6

    if-nez v6, :cond_51

    .line 86
    const-string v6, "SyncTask"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 87
    const-string v6, "SyncTask"

    const-string v6, "Task aborted: sync is not enabled"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 91
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SyncTask;->getRunningId()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_97

    const-string v6, "TASK_SYNC_REPEATED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_97

    .line 93
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getLastSyncTime()J

    move-result-wide v1

    .line 94
    .local v1, last:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 95
    .local v3, now:J
    sub-long v6, v3, v1

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-gez v6, :cond_97

    .line 96
    const-string v6, "SyncTask"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 97
    const-string v6, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task aborted: ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wait another interval."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 102
    .end local v1           #last:J
    .end local v3           #now:J
    :cond_97
    const-class v6, Lcom/google/android/inputmethod/pinyin/SyncTask;

    monitor-enter v6

    .line 103
    :try_start_9a
    iget-boolean v7, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mRunning:Z

    if-eqz v7, :cond_b4

    .line 104
    const-string v7, "SyncTask"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 105
    const-string v7, "SyncTask"

    const-string v8, "Task aborted: previous task is still running"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_ae
    monitor-exit v6

    goto/16 :goto_1a

    .line 109
    :catchall_b1
    move-exception v7

    monitor-exit v6
    :try_end_b3
    .catchall {:try_start_9a .. :try_end_b3} :catchall_b1

    throw v7

    .line 108
    :cond_b4
    const/4 v7, 0x1

    :try_start_b5
    iput-boolean v7, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mRunning:Z

    .line 109
    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b1

    .line 111
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mContext:Landroid/content/Context;

    const/16 v7, 0x101

    invoke-static {v6, v7, v12, v14}, Lcom/google/android/inputmethod/pinyin/EventListener;->notify(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 115
    const-string v6, "SyncTask"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_149

    .line 116
    const-string v6, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task started @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v6, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "with token \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v6, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "with guid \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v6, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "with ID \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SyncTask;->getRunningId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_149
    const/4 v5, 0x1

    .line 123
    .local v5, success:Z
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SyncTask;->syncUserDictionary()Z

    move-result v5

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setLastSyncTime(J)V

    .line 127
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mContext:Landroid/content/Context;

    const/16 v7, 0x201

    if-eqz v5, :cond_18c

    move v8, v12

    :goto_15c
    invoke-static {v6, v7, v8, v14}, Lcom/google/android/inputmethod/pinyin/EventListener;->notify(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 131
    const-class v6, Lcom/google/android/inputmethod/pinyin/SyncTask;

    monitor-enter v6

    .line 132
    const/4 v7, 0x0

    :try_start_163
    iput-boolean v7, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mRunning:Z

    .line 133
    monitor-exit v6
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_18e

    .line 135
    const-string v6, "SyncTask"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 136
    const-string v6, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task finished @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 127
    :cond_18c
    const/4 v8, 0x2

    goto :goto_15c

    .line 133
    :catchall_18e
    move-exception v7

    :try_start_18f
    monitor-exit v6
    :try_end_190
    .catchall {:try_start_18f .. :try_end_190} :catchall_18e

    throw v7
.end method

.method private syncUserDictionary()Z
    .registers 23

    .prologue
    .line 140
    const/4 v14, 0x1

    .line 142
    .local v14, noerror:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    move-object v3, v0

    .line 144
    .local v3, sync:Lcom/google/android/inputmethod/pinyin/SyncEngine;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 145
    .local v4, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    .line 146
    .local v15, params:Lorg/apache/http/params/HttpParams;
    const/16 v5, 0x1388

    invoke-static {v15, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 147
    const/16 v5, 0x1388

    invoke-static {v15, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 148
    const-wide/16 v20, 0x1388

    move-object v0, v15

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 152
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imFlushCache()V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->syncBegin()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 155
    const-string v5, "SyncTask"

    const-string v6, "Failed to begin Pinyin sync service!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_3b
    return v14

    .line 158
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->syncGetCapacity()I

    move-result v9

    .line 159
    .local v9, capacity:I
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 160
    const-string v5, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User dictionary capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_66
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getNextSyncSince()J

    move-result-wide v6

    .line 163
    .local v6, timeStamp:J
    :goto_6a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mCanceled:Z

    move v5, v0

    if-nez v5, :cond_116

    .line 164
    const-string v5, "SyncTask"

    const/4 v8, 0x3

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 165
    const-string v5, "SyncTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sync user dictionary from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_92
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getGuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->download(Lorg/apache/http/client/HttpClient;Ljava/lang/String;JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 169
    .local v17, tomerge:Ljava/lang/String;
    const-string v5, "SyncTask"

    const/4 v8, 0x3

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 170
    const-string v5, "SyncTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ToMerge: \'"

    .end local v9           #capacity:I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_c8
    const-string v5, "SyncTask"

    const/4 v8, 0x3

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 172
    const-string v5, "SyncTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->getLastError()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", next download since \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->getNextDownloadSince()J

    move-result-wide v20

    move-object v0, v8

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->syncPutLemmas(Ljava/lang/String;)I

    .line 176
    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->getLastError()I

    move-result v5

    const/4 v8, 0x5

    if-eq v5, v8, :cond_256

    .line 189
    .end local v17           #tomerge:Ljava/lang/String;
    :cond_116
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mCanceled:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12e

    .line 190
    .end local v6           #timeStamp:J
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 191
    const-string v5, "SyncTask"

    const-string v6, "Canceled by user!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_12e
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_153

    .line 194
    const-string v5, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finish download with error code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->getLastError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_153
    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->getLastError()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_161

    .line 197
    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->getNextDownloadSince()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setNextSyncSince(J)V

    .line 200
    :cond_161
    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->getLastError()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2dd

    .line 201
    :goto_168
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mCanceled:Z

    move v5, v0

    if-nez v5, :cond_267

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->syncGetTotalCount()I

    move-result v18

    .line 203
    .local v18, total_count:I
    const/4 v5, 0x1

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_2b2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->syncGetLemmas()Ljava/lang/String;

    move-result-object v19

    .line 205
    .local v19, toupload:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->syncGetLastCount()I

    move-result v11

    .line 206
    .local v11, last_count:I
    if-eqz v19, :cond_2a1

    if-lez v11, :cond_2a1

    .line 207
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1be

    .line 208
    const-string v5, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ToUpload: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1be
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1ec

    .line 210
    const-string v5, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " out of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1ec
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->upload(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 213
    .local v16, ret:Z
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_220

    .line 214
    const-string v5, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upload result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_220
    if-eqz v16, :cond_266

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->syncClearLastGot()V
    :try_end_22a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_22a} :catch_22c

    goto/16 :goto_168

    .line 251
    .end local v11           #last_count:I
    .end local v16           #ret:Z
    .end local v18           #total_count:I
    .end local v19           #toupload:Ljava/lang/String;
    :catch_22c
    move-exception v5

    move-object v10, v5

    .line 252
    .local v10, e:Landroid/os/RemoteException;
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_253

    .line 253
    const-string v5, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_253
    const/4 v14, 0x0

    goto/16 :goto_3b

    .line 178
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v6       #timeStamp:J
    .restart local v17       #tomerge:Ljava/lang/String;
    :cond_256
    :try_start_256
    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->getNextDownloadSince()J

    move-result-wide v12

    .line 181
    .local v12, nextTimeStamp:J
    cmp-long v5, v12, v6

    if-gtz v5, :cond_262

    .line 182
    const-wide/16 v20, 0x1

    add-long v12, v6, v20

    .line 184
    :cond_262
    move-wide v6, v12

    .line 187
    const/4 v9, 0x0

    .line 188
    .restart local v9       #capacity:I
    goto/16 :goto_6a

    .line 219
    .end local v6           #timeStamp:J
    .end local v9           #capacity:I
    .end local v12           #nextTimeStamp:J
    .end local v17           #tomerge:Ljava/lang/String;
    .restart local v11       #last_count:I
    .restart local v16       #ret:Z
    .restart local v18       #total_count:I
    .restart local v19       #toupload:Ljava/lang/String;
    :cond_266
    const/4 v14, 0x0

    .line 233
    .end local v11           #last_count:I
    .end local v16           #ret:Z
    .end local v18           #total_count:I
    .end local v19           #toupload:Ljava/lang/String;
    :cond_267
    :goto_267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mCanceled:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_27f

    .line 234
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_27f

    .line 235
    const-string v5, "SyncTask"

    const-string v6, "Canceled by user!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_27f
    :goto_27f
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_28f

    .line 242
    const-string v5, "SyncTask"

    const-string v6, "Finish upload"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_28f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->syncFinish()V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imFlushCache()V

    goto/16 :goto_3b

    .line 223
    .restart local v11       #last_count:I
    .restart local v18       #total_count:I
    .restart local v19       #toupload:Ljava/lang/String;
    :cond_2a1
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_267

    .line 224
    const-string v5, "SyncTask"

    const-string v6, "Fail to retrieve upload string"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_267

    .line 228
    .end local v11           #last_count:I
    .end local v19           #toupload:Ljava/lang/String;
    :cond_2b2
    const-string v5, "SyncTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_267

    .line 229
    const-string v5, "SyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No need to upload, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lemma(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2dc
    .catch Landroid/os/RemoteException; {:try_start_256 .. :try_end_2dc} :catch_22c

    goto :goto_267

    .line 238
    .end local v18           #total_count:I
    :cond_2dd
    const/4 v14, 0x0

    goto :goto_27f
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mCanceled:Z

    .line 60
    return v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SyncTask;->mCanceled:Z

    .line 68
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SyncTask;->runInner()V

    .line 69
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->releaseInstance()V

    .line 70
    return-void
.end method
