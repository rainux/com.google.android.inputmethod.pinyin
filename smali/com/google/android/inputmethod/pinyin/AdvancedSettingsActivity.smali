.class public Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/google/android/inputmethod/pinyin/EventListener$Listener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final ACTION_CLEAR:I = 0x2

.field private static final ACTION_SYNC:I = 0x1

.field private static final CREDENTIALS_RESULT_INTENT:I = 0x1

.field private static final DIALOG_CONFIRM_CLEAR:I = 0x2

.field private static final DIALOG_CONFIRM_SYNC:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAuthHandler:Lcom/google/android/inputmethod/pinyin/AuthHandler;

.field private mCapcha:Landroid/widget/TextView;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

.field private mDialogClear:Landroid/app/Dialog;

.field private mDialogViewClear:Landroid/view/View;

.field private mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

.field private final mHandler:Landroid/os/Handler;

.field private mInput:Landroid/widget/EditText;

.field private mMainThread:Ljava/lang/Thread;

.field private mSyncClearPref:Landroid/preference/Preference;

.field private mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mSyncNowPref:Landroid/preference/Preference;

.field private mSyncNowStarted:Z

.field private mSyncSummary:Ljava/lang/String;

.field private mUpdateEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mUpdateSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "AdvSettingsActivity"

    sput-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mAuthHandler:Lcom/google/android/inputmethod/pinyin/AuthHandler;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 60
    const-string v0, ""

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncSummary:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncNowStarted:Z

    .line 62
    const-string v0, ""

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateSummary:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    .line 66
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    .line 74
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDialogViewClear:Landroid/view/View;

    .line 75
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mCapcha:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mInput:Landroid/widget/EditText;

    .line 77
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDialogClear:Landroid/app/Dialog;

    .line 79
    new-instance v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$1;-><init>(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;Lcom/google/android/inputmethod/pinyin/IDataService;)Lcom/google/android/inputmethod/pinyin/IDataService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mCapcha:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->startAction(I)V

    return-void
.end method

.method private cancelSync()V
    .registers 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    if-nez v0, :cond_15

    .line 435
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 436
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Data service is still unbinded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_14
    :goto_14
    return-void

    .line 441
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/IDataService;->isReady()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/IDataService;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 442
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/IDataService;->syncCancel()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2a} :catch_2b

    goto :goto_14

    .line 444
    :catch_2b
    move-exception v0

    goto :goto_14
.end method

.method private getLastSyncTime()Ljava/lang/String;
    .registers 6

    .prologue
    .line 209
    const-string v0, ""

    .line 210
    .local v0, sync_time:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getLastSyncTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_30

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a006a

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getLastSyncTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getReadableDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_30
    return-object v0
.end method

.method private getLastUpdateTime()Ljava/lang/String;
    .registers 6

    .prologue
    .line 218
    const-string v0, ""

    .line 219
    .local v0, update_time:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getLastUpdateTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_30

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0069

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getLastUpdateTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getReadableDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_30
    return-object v0
.end method

.method private getReadableDate(J)Ljava/lang/String;
    .registers 7
    .parameter "ts"

    .prologue
    .line 197
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 198
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a006b

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a006c

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a006d

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a006e

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a006f

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    return-object v1
.end method

.method private getSyncCredentials()Z
    .registers 4

    .prologue
    .line 248
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    .line 249
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mAuthHandler:Lcom/google/android/inputmethod/pinyin/AuthHandler;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/AuthHandler;->authenticate()Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;

    move-result-object v0

    .line 250
    .local v0, credentials:Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->postAuthentication(Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;)Z

    move-result v1

    .line 255
    .end local v0           #credentials:Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;
    :goto_16
    return v1

    .line 252
    :cond_17
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 253
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Already has token credentials."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_27
    const/4 v1, 0x1

    goto :goto_16
.end method

.method private postAuthentication(Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;)Z
    .registers 7
    .parameter "credentials"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 259
    if-nez p1, :cond_7

    move v0, v3

    .line 282
    :goto_6
    return v0

    .line 262
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->getCredentialsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 263
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->getCredentialsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setAuthToken(Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 265
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got token credentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->getCredentialsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move v0, v4

    .line 267
    goto :goto_6

    .line 270
    :cond_3a
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 271
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 272
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an intent to run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_64
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    .line 275
    goto :goto_6

    .line 279
    :cond_6d
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 280
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Impossible authentication return!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    move v0, v3

    .line 282
    goto :goto_6
.end method

.method private startAction(I)V
    .registers 5
    .parameter "action"

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDataService;->isReady()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 369
    packed-switch p1, :pswitch_data_2a

    .line 383
    :cond_f
    :goto_f
    return-void

    .line 371
    :pswitch_10
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->startSync()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_f

    .line 379
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 380
    .local v0, e:Landroid/os/RemoteException;
    const v1, 0x7f0a0067

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_f

    .line 374
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_26
    :try_start_26
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->startClear()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_14

    goto :goto_f

    .line 369
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_26
    .end packed-switch
.end method

.method private startClear()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, ready:Z
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    if-nez v1, :cond_17

    .line 388
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 389
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Data service is still unbinded."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_16
    :goto_16
    return-void

    .line 394
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDataService;->isReady()Z

    move-result v0

    .line 395
    if-eqz v0, :cond_2c

    .line 396
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDataService;->syncClear()V

    .line 397
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncClearPref:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2b

    goto :goto_16

    .line 400
    :catch_2b
    move-exception v1

    .line 402
    :cond_2c
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 403
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Disable clear operation when IME service is not active."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_3b
    const v1, 0x7f0a0067

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_16
.end method

.method private startSync()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, ready:Z
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    if-nez v1, :cond_17

    .line 412
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 413
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Data service is still unbinded."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_16
    :goto_16
    return-void

    .line 418
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDataService;->isReady()Z

    move-result v0

    .line 419
    if-eqz v0, :cond_2c

    .line 420
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDataService;->syncStart()V

    .line 421
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncNowPref:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2b

    goto :goto_16

    .line 424
    :catch_2b
    move-exception v1

    .line 426
    :cond_2c
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 427
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Disable sync operation when IME service is not active."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_3b
    const v1, 0x7f0a0067

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_16
.end method

.method private updateSyncSummary(Ljava/lang/String;)V
    .registers 6
    .parameter "s"

    .prologue
    const-string v3, "\n"

    .line 227
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a005e

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a005f

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method private updateUpdateSummary(Ljava/lang/String;)V
    .registers 6
    .parameter "s"

    .prologue
    const-string v3, "\n"

    .line 234
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateEnabledPref:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a005e

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateEnabledPref:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a005f

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method private updateWidgets()V
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getUpdateEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 243
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getLastSyncTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->updateSyncSummary(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->updateUpdateSummary(Ljava/lang/String;)V

    .line 245
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 350
    packed-switch p1, :pswitch_data_24

    .line 364
    :goto_4
    return-void

    .line 352
    :pswitch_5
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mAuthHandler:Lcom/google/android/inputmethod/pinyin/AuthHandler;

    invoke-interface {v2, p2, p3}, Lcom/google/android/inputmethod/pinyin/AuthHandler;->handleActivityResult(ILandroid/content/Intent;)Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;

    move-result-object v0

    .line 354
    .local v0, credentials:Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->postAuthentication(Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;)Z

    move-result v1

    .line 355
    .local v1, got_token:Z
    if-ne v1, v3, :cond_15

    .line 356
    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setSyncEnabled(Z)V

    goto :goto_4

    .line 358
    :cond_15
    const v2, 0x7f0a0071

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->updateSyncSummary(Ljava/lang/String;)V

    goto :goto_4

    .line 350
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/high16 v5, 0x7f05

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 100
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const v5, 0x7f0a0054

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 102
    const v5, 0x7f0a0057

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 104
    const v5, 0x7f0a0058

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncNowPref:Landroid/preference/Preference;

    .line 106
    const v5, 0x7f0a0059

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncClearPref:Landroid/preference/Preference;

    .line 109
    const v5, 0x7f0a0052

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 111
    .local v4, updateCatagory:Landroid/preference/Preference;
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    .local v0, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030005

    invoke-virtual {v0, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDialogViewClear:Landroid/view/View;

    .line 117
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDialogViewClear:Landroid/view/View;

    const v6, 0x7f0d000f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mCapcha:Landroid/widget/TextView;

    .line 118
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDialogViewClear:Landroid/view/View;

    const v6, 0x7f0d0010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mInput:Landroid/widget/EditText;

    .line 119
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0065

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDialogViewClear:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$2;

    invoke-direct {v7, p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$2;-><init>(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDialogClear:Landroid/app/Dialog;

    .line 134
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    .line 137
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, token:Ljava/lang/String;
    sget-object v5, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 139
    sget-object v5, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTH_TOKEN is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_df
    new-instance v5, Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;

    invoke-direct {v5, p0}, Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mAuthHandler:Lcom/google/android/inputmethod/pinyin/AuthHandler;

    .line 142
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mAuthHandler:Lcom/google/android/inputmethod/pinyin/AuthHandler;

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/AuthHandler;->initialize()V

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mMainThread:Ljava/lang/Thread;

    .line 146
    new-instance v5, Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-direct {v5, p0}, Lcom/google/android/inputmethod/pinyin/EventListener;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    .line 147
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-virtual {v5, p0}, Lcom/google/android/inputmethod/pinyin/EventListener;->addListener(Lcom/google/android/inputmethod/pinyin/EventListener$Listener;)V

    .line 148
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/EventListener;->start()V

    .line 150
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->updateWidgets()V

    .line 152
    invoke-static {p0, v8}, Lcom/google/android/inputmethod/pinyin/DataService;->control(Landroid/content/Context;I)V

    .line 153
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v2, service:Landroid/content/Intent;
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v5, v8}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 155
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_56

    .line 307
    :goto_4
    return-object v0

    .line 290
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$3;-><init>(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 301
    goto :goto_4

    .line 303
    :pswitch_37
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mCapcha:Landroid/widget/TextView;

    const-string v2, "%04d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDialogClear:Landroid/app/Dialog;

    goto :goto_4

    .line 288
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_5
        :pswitch_37
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    if-eqz v0, :cond_c

    .line 169
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mDataService:Lcom/google/android/inputmethod/pinyin/IDataService;

    .line 172
    :cond_c
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/inputmethod/pinyin/DataService;->control(Landroid/content/Context;I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mAuthHandler:Lcom/google/android/inputmethod/pinyin/AuthHandler;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/AuthHandler;->destroy()V

    .line 175
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->releaseInstance()V

    .line 176
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-virtual {v0, p0}, Lcom/google/android/inputmethod/pinyin/EventListener;->removeListener(Lcom/google/android/inputmethod/pinyin/EventListener$Listener;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mEventListener:Lcom/google/android/inputmethod/pinyin/EventListener;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/EventListener;->stop()V

    .line 178
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 179
    return-void
.end method

.method public onNotification(IILandroid/os/Bundle;)V
    .registers 6
    .parameter "event"
    .parameter "error"
    .parameter "extra"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 509
    sparse-switch p1, :sswitch_data_1e

    .line 523
    :goto_5
    return-void

    .line 511
    :sswitch_6
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->onSyncStarted()V

    goto :goto_5

    .line 514
    :sswitch_a
    if-eq p2, v0, :cond_10

    :goto_c
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->onSyncStopped(Z)V

    goto :goto_5

    :cond_10
    move v0, v1

    goto :goto_c

    .line 517
    :sswitch_12
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->onUpdateStarted()V

    goto :goto_5

    .line 520
    :sswitch_16
    if-eq p2, v0, :cond_1c

    :goto_18
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->onUpdateStopped(Z)V

    goto :goto_5

    :cond_1c
    move v0, v1

    goto :goto_18

    .line 509
    :sswitch_data_1e
    .sparse-switch
        0x101 -> :sswitch_6
        0x105 -> :sswitch_12
        0x201 -> :sswitch_a
        0x205 -> :sswitch_16
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setSyncEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setUpdateEnabled(Z)V

    .line 185
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->writeBack()V

    .line 187
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/inputmethod/pinyin/DataService;->control(Landroid/content/Context;I)V

    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 190
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 313
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0057

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_30

    .line 315
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 316
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 317
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getSyncCredentials()Z

    move-result v0

    if-ne v2, v0, :cond_2e

    .line 318
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 319
    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setSyncEnabled(Z)V

    :cond_2e
    move v0, v2

    .line 342
    :goto_2f
    return v0

    .line 323
    :cond_30
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0058

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5f

    .line 325
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a005b

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5b

    .line 327
    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->showDialog(I)V

    :goto_59
    move v0, v2

    .line 331
    goto :goto_2f

    .line 329
    :cond_5b
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->cancelSync()V

    goto :goto_59

    .line 332
    :cond_5f
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0059

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_76

    .line 334
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->showDialog(I)V

    move v0, v2

    .line 335
    goto :goto_2f

    .line 336
    :cond_76
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0054

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_92

    .line 338
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setUpdateEnabled(Z)V

    move v0, v2

    .line 339
    goto :goto_2f

    .line 342
    :cond_92
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_2f
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 161
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/inputmethod/pinyin/DataService;->control(Landroid/content/Context;I)V

    .line 163
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->updateWidgets()V

    .line 164
    return-void
.end method

.method public onSyncStarted()V
    .registers 3

    .prologue
    .line 449
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncSummary:Ljava/lang/String;

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncNowStarted:Z

    .line 451
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_22

    .line 452
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    :goto_21
    return-void

    .line 454
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->run()V

    goto :goto_21
.end method

.method public onSyncStopped(Z)V
    .registers 4
    .parameter "hasError"

    .prologue
    .line 460
    if-eqz p1, :cond_24

    .line 461
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncSummary:Ljava/lang/String;

    .line 465
    :goto_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncNowStarted:Z

    .line 466
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_2b

    .line 467
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    :goto_23
    return-void

    .line 463
    :cond_24
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getLastSyncTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncSummary:Ljava/lang/String;

    goto :goto_13

    .line 469
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->run()V

    goto :goto_23
.end method

.method public onUpdateStarted()V
    .registers 3

    .prologue
    .line 474
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateSummary:Ljava/lang/String;

    .line 475
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1f

    .line 476
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    :goto_1e
    return-void

    .line 478
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->run()V

    goto :goto_1e
.end method

.method public onUpdateStopped(Z)V
    .registers 4
    .parameter "hasError"

    .prologue
    .line 484
    if-eqz p1, :cond_21

    .line 485
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateSummary:Ljava/lang/String;

    .line 489
    :goto_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_28

    .line 490
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    :goto_20
    return-void

    .line 487
    :cond_21
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateSummary:Ljava/lang/String;

    goto :goto_13

    .line 492
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->run()V

    goto :goto_20
.end method

.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 497
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mUpdateSummary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->updateUpdateSummary(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncSummary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->updateSyncSummary(Ljava/lang/String;)V

    .line 499
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncNowStarted:Z

    if-ne v0, v2, :cond_26

    .line 500
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncNowPref:Landroid/preference/Preference;

    const v1, 0x7f0a005c

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 504
    :goto_1b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncNowPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 505
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncClearPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 506
    return-void

    .line 502
    :cond_26
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->mSyncNowPref:Landroid/preference/Preference;

    const v1, 0x7f0a005b

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1b
.end method
