.class public Lcom/google/android/inputmethod/pinyin/DataService;
.super Landroid/app/Service;
.source "DataService.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/EventListener$Listener;


# static fields
.field public static final ACTION_REFRESH:I = 0x4

.field public static final ACTION_START_AUTO:I = 0x3

.field public static final ACTION_START_STICKY:I = 0x1

.field public static final ACTION_STOP_STICKY:I = 0x2

.field private static final FLAG_ACTION:Ljava/lang/String; = "FLAG_ACTION"

.field public static final SYNC_INTERVAL:I = 0x5265c00

.field private static SYNC_NOTIFICATIONS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DataService"

.field public static final TASK_SYNC_CLEAR:Ljava/lang/String; = "TASK_SYNC_CLEAR"

.field public static final TASK_SYNC_ONCE:Ljava/lang/String; = "TASK_SYNC_ONCE"

.field public static final TASK_SYNC_REPEATED:Ljava/lang/String; = "TASK_SYNC_REPEATED"

.field public static final TASK_UPDATE_REPEATED:Ljava/lang/String; = "TASK_UPDATE_REPEATED"

.field public static final UPDATE_INTERVAL:I = 0x5265c00

.field private static final mScheduler:Lcom/google/android/inputmethod/pinyin/TaskScheduler;


# instance fields
.field private final mBinder:Lcom/google/android/inputmethod/pinyin/IDataService$Stub;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

.field private mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

.field private mNM:Landroid/app/NotificationManager;

.field private mSomeoneBinded:Z

.field private mStickyUserCount:I

.field private mSyncEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/DataService;->mScheduler:Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    .line 84
    const v0, 0x7f0200c1

    sput v0, Lcom/google/android/inputmethod/pinyin/DataService;->SYNC_NOTIFICATIONS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 64
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mContext:Landroid/content/Context;

    .line 75
    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mSomeoneBinded:Z

    .line 79
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mStickyUserCount:I

    .line 81
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->getInstance()Lcom/google/android/inputmethod/pinyin/SyncEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mSyncEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    .line 82
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    .line 83
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mNM:Landroid/app/NotificationManager;

    .line 86
    new-instance v0, Lcom/google/android/inputmethod/pinyin/DataService$1;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/DataService$1;-><init>(Lcom/google/android/inputmethod/pinyin/DataService;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mConnection:Landroid/content/ServiceConnection;

    .line 242
    new-instance v0, Lcom/google/android/inputmethod/pinyin/DataService$2;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/DataService$2;-><init>(Lcom/google/android/inputmethod/pinyin/DataService;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDataService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/inputmethod/pinyin/DataService;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/IDecoder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/DataService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/DataService;->startOrStopTaskIfNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/inputmethod/pinyin/DataService;->mScheduler:Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/inputmethod/pinyin/DataService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/SyncEngine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mSyncEngine:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    return-object v0
.end method

.method public static control(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, service:Landroid/content/Intent;
    const-string v1, "FLAG_ACTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    return-void
.end method

.method private hideNotification()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mNM:Landroid/app/NotificationManager;

    if-eqz v0, :cond_b

    .line 222
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mNM:Landroid/app/NotificationManager;

    sget v1, Lcom/google/android/inputmethod/pinyin/DataService;->SYNC_NOTIFICATIONS:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 223
    :cond_b
    return-void
.end method

.method private showNotification(I)V
    .registers 9
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 202
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mNM:Landroid/app/NotificationManager;

    if-nez v2, :cond_f

    .line 203
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/DataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mNM:Landroid/app/NotificationManager;

    .line 205
    :cond_f
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mNM:Landroid/app/NotificationManager;

    if-nez v2, :cond_14

    .line 218
    :goto_13
    return-void

    .line 207
    :cond_14
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0200c1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 210
    .local v1, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 213
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0a0060

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/DataService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/inputmethod/pinyin/DataService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 217
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mNM:Landroid/app/NotificationManager;

    sget v3, Lcom/google/android/inputmethod/pinyin/DataService;->SYNC_NOTIFICATIONS:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_13
.end method

.method private startOrStopTaskIfNeeded()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x3

    const-string v8, "Error: "

    const-string v6, "DataService"

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, sync:Z
    const/4 v3, 0x0

    .line 159
    .local v3, update:Z
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    .line 161
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getSyncEnabled()Z

    move-result v2

    .line 162
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getUpdateEnabled()Z

    move-result v3

    .line 163
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->releaseInstance()V

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, someTaskStarted:Z
    if-ne v2, v9, :cond_57

    .line 168
    :try_start_21
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDataService$Stub;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->enableSync()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_30

    .line 169
    const/4 v1, 0x1

    .line 182
    :cond_27
    :goto_27
    if-ne v3, v9, :cond_ab

    .line 184
    :try_start_29
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDataService$Stub;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->enableUpdate()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_84

    .line 185
    const/4 v1, 0x1

    .line 198
    :cond_2f
    :goto_2f
    return v1

    .line 170
    :catch_30
    move-exception v4

    move-object v0, v4

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DataService"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 172
    const-string v4, "DataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 176
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_57
    :try_start_57
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDataService$Stub;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->disableSync()V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_5d

    goto :goto_27

    .line 177
    :catch_5d
    move-exception v4

    move-object v0, v4

    .line 178
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v4, "DataService"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 179
    const-string v4, "DataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 186
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_84
    move-exception v4

    move-object v0, v4

    .line 187
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v4, "DataService"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 188
    const-string v4, "DataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 192
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_ab
    :try_start_ab
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDataService$Stub;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->disableUpdate()V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_b0} :catch_b2

    goto/16 :goto_2f

    .line 193
    :catch_b2
    move-exception v4

    move-object v0, v4

    .line 194
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v4, "DataService"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 195
    const-string v4, "DataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mSomeoneBinded:Z

    .line 228
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDataService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    const-string v2, "DataService"

    .line 104
    const-string v1, "DataService"

    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 105
    const-string v1, "DataService"

    const-string v1, "Data service created."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_12
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    iput-object p0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.inputmethod.pinyin.Decoder"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/DataService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 111
    new-instance v1, Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/EventListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    .line 112
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-virtual {v1, p0}, Lcom/google/android/inputmethod/pinyin/EventListener;->addListener(Lcom/google/android/inputmethod/pinyin/EventListener$Listener;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/EventListener;->start()V

    .line 114
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const-string v1, "DataService"

    .line 142
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/DataService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-virtual {v0, p0}, Lcom/google/android/inputmethod/pinyin/EventListener;->removeListener(Lcom/google/android/inputmethod/pinyin/EventListener$Listener;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/EventListener;->stop()V

    .line 145
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 146
    const-string v0, "DataService"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 147
    const-string v0, "DataService"

    const-string v0, "Data service destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_24
    return-void
.end method

.method public onNotification(IILandroid/os/Bundle;)V
    .registers 5
    .parameter "event"
    .parameter "error"
    .parameter "extra"

    .prologue
    .line 309
    sparse-switch p1, :sswitch_data_1a

    .line 323
    :goto_3
    return-void

    .line 311
    :sswitch_4
    const v0, 0x7f0a0061

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/DataService;->showNotification(I)V

    goto :goto_3

    .line 314
    :sswitch_b
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/DataService;->hideNotification()V

    goto :goto_3

    .line 317
    :sswitch_f
    const v0, 0x7f0a0062

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/DataService;->showNotification(I)V

    goto :goto_3

    .line 320
    :sswitch_16
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/DataService;->hideNotification()V

    goto :goto_3

    .line 309
    :sswitch_data_1a
    .sparse-switch
        0x101 -> :sswitch_4
        0x105 -> :sswitch_f
        0x201 -> :sswitch_b
        0x205 -> :sswitch_16
    .end sparse-switch
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/inputmethod/pinyin/DataService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 234
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    const-string v5, "DataService"

    .line 118
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 120
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/DataService;->startOrStopTaskIfNeeded()Z

    move-result v1

    .line 121
    .local v1, someTaskStarted:Z
    const-string v2, "FLAG_ACTION"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, action:I
    if-ne v0, v4, :cond_3b

    .line 124
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mStickyUserCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mStickyUserCount:I

    .line 129
    :cond_19
    :goto_19
    if-eq v0, v3, :cond_1e

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3a

    .line 130
    :cond_1e
    if-nez v1, :cond_3a

    iget-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mSomeoneBinded:Z

    if-nez v2, :cond_3a

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mStickyUserCount:I

    if-nez v2, :cond_3a

    .line 132
    const-string v2, "DataService"

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 133
    const-string v2, "DataService"

    const-string v2, "Nothing is not enabled, stopping data service ..."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_37
    invoke-virtual {p0, p2}, Lcom/google/android/inputmethod/pinyin/DataService;->stopSelf(I)V

    .line 138
    :cond_3a
    return-void

    .line 125
    :cond_3b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    .line 126
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mStickyUserCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mStickyUserCount:I

    .line 127
    const/4 v0, 0x3

    goto :goto_19
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/DataService;->mSomeoneBinded:Z

    .line 239
    const/4 v0, 0x1

    return v0
.end method
