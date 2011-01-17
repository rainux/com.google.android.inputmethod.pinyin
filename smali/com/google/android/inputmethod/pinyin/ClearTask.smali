.class public Lcom/google/android/inputmethod/pinyin/ClearTask;
.super Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;
.source "ClearTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClearTask"

.field private static final TIMEOUT:I = 0x1388

.field private static mInstance:Lcom/google/android/inputmethod/pinyin/ClearTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

.field private volatile mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

.field private mRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mInstance:Lcom/google/android/inputmethod/pinyin/ClearTask;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;)V
    .registers 5
    .parameter "ctxt"
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mContext:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mRunning:Z

    .line 40
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    .line 43
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 45
    return-void
.end method

.method private clearUserDictionary()Z
    .registers 8

    .prologue
    const/16 v4, 0x1388

    const-string v6, "ClearTask"

    .line 126
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    .line 128
    .local v3, sync:Lcom/google/android/inputmethod/pinyin/SyncEngine;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 129
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 130
    .local v2, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 132
    const-wide/16 v4, 0x1388

    invoke-static {v2, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 134
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->clear(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 136
    .local v1, noerror:Z
    const-string v4, "ClearTask"

    const/4 v4, 0x3

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 137
    const-string v4, "ClearTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clear user dictionary result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_47
    return v1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;Lcom/google/android/inputmethod/pinyin/SyncEngine;)Lcom/google/android/inputmethod/pinyin/ClearTask;
    .registers 4
    .parameter "ctxt"
    .parameter "service"
    .parameter "engine"

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mInstance:Lcom/google/android/inputmethod/pinyin/ClearTask;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/google/android/inputmethod/pinyin/ClearTask;

    invoke-direct {v0, p0, p1}, Lcom/google/android/inputmethod/pinyin/ClearTask;-><init>(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mInstance:Lcom/google/android/inputmethod/pinyin/ClearTask;

    .line 51
    :cond_b
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mInstance:Lcom/google/android/inputmethod/pinyin/ClearTask;

    iput-object p2, v0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    .line 53
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mInstance:Lcom/google/android/inputmethod/pinyin/ClearTask;

    return-object v0
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ClearTask;->runInner()V

    .line 66
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->releaseInstance()V

    .line 67
    return-void
.end method

.method public runInner()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x3

    const-string v8, "\'"

    const-string v4, "ClearTask"

    .line 70
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    if-nez v1, :cond_1b

    .line 71
    const-string v1, "ClearTask"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 72
    const-string v1, "ClearTask"

    const-string v1, "Task aborted: unbinded IME service."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1a
    :goto_1a
    return-void

    .line 76
    :cond_1b
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3b

    .line 77
    const-string v1, "ClearTask"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 78
    const-string v1, "ClearTask"

    const-string v1, "Task aborted: empty credentials."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 82
    :cond_3b
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_51

    .line 83
    const-string v1, "ClearTask"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 84
    const-string v1, "ClearTask"

    const-string v1, "Task aborted: sync is not enabled"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 88
    :cond_51
    const-class v1, Lcom/google/android/inputmethod/pinyin/ClearTask;

    monitor-enter v1

    .line 89
    :try_start_54
    iget-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mRunning:Z

    if-eqz v2, :cond_6d

    .line 90
    const-string v2, "ClearTask"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 91
    const-string v2, "ClearTask"

    const-string v3, "Task aborted: previous task is still running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_68
    monitor-exit v1

    goto :goto_1a

    .line 95
    :catchall_6a
    move-exception v2

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_6a

    throw v2

    .line 94
    :cond_6d
    const/4 v2, 0x1

    :try_start_6e
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mRunning:Z

    .line 95
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6a

    .line 97
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mContext:Landroid/content/Context;

    const/16 v2, 0x101

    invoke-static {v1, v2, v6, v7}, Lcom/google/android/inputmethod/pinyin/EventListener;->notify(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 101
    const-string v1, "ClearTask"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 102
    const-string v1, "ClearTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task started @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v1, "ClearTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "with token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v1, "ClearTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "with guid \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_e0
    const/4 v0, 0x1

    .line 108
    .local v0, success:Z
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/ClearTask;->clearUserDictionary()Z

    move-result v0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setLastSyncTime(J)V

    .line 112
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mContext:Landroid/content/Context;

    const/16 v2, 0x201

    if-eqz v0, :cond_123

    move v3, v6

    :goto_f3
    invoke-static {v1, v2, v3, v7}, Lcom/google/android/inputmethod/pinyin/EventListener;->notify(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 116
    const-class v1, Lcom/google/android/inputmethod/pinyin/ClearTask;

    monitor-enter v1

    .line 117
    const/4 v2, 0x0

    :try_start_fa
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/ClearTask;->mRunning:Z

    .line 118
    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_125

    .line 120
    const-string v1, "ClearTask"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 121
    const-string v1, "ClearTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task finished @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 112
    :cond_123
    const/4 v3, 0x2

    goto :goto_f3

    .line 118
    :catchall_125
    move-exception v2

    :try_start_126
    monitor-exit v1
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    throw v2
.end method
