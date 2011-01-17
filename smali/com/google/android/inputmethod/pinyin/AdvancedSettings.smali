.class public Lcom/google/android/inputmethod/pinyin/AdvancedSettings;
.super Ljava/lang/Object;
.source "AdvancedSettings.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONFIG_AUTH_TOKEN_KEY:Ljava/lang/String; = "token"

.field private static final CONFIG_GUID_KEY:Ljava/lang/String; = "guid"

.field private static final CONFIG_LAST_SYNC_TIME_KEY:Ljava/lang/String; = "last_sync"

.field private static final CONFIG_LAST_UPDATE_TIME_KEY:Ljava/lang/String; = "last_update"

.field private static final CONFIG_NEXT_SYNC_SINCE_KEY:Ljava/lang/String; = "next_sync"

.field private static final CONFIG_NEXT_UPDATE_SINCE_KEY:Ljava/lang/String; = "next_update"

.field private static final CONFIG_SYNC_KEY:Ljava/lang/String; = "sync"

.field private static final CONFIG_UPDATE_KEY:Ljava/lang/String; = "update"

.field private static mAuthToken:Ljava/lang/String;

.field private static mChanged:Z

.field private static mGuid:Ljava/lang/String;

.field private static mInstance:Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

.field private static mLastSyncTime:J

.field private static mLastUpdateTime:J

.field private static mNextSyncSince:J

.field private static mNextUpdateSince:J

.field private static mRefCount:I

.field private static mSharedPref:Landroid/content/SharedPreferences;

.field private static mSync:Z

.field private static mUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const-wide/16 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    const-class v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_f
    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->$assertionsDisabled:Z

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mAuthToken:Ljava/lang/String;

    .line 37
    sput-wide v5, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextSyncSince:J

    .line 38
    sput-wide v3, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastSyncTime:J

    .line 39
    sput-wide v5, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextUpdateSince:J

    .line 40
    sput-wide v3, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastUpdateTime:J

    .line 42
    sput-object v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mInstance:Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    .line 44
    sput v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mRefCount:I

    .line 46
    sput-boolean v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    .line 48
    sput-object v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-void

    :cond_26
    move v0, v1

    .line 23
    goto :goto_f
.end method

.method protected constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "pref"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sput-object p1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 52
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->initConfs()V

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    .line 54
    return-void
.end method

.method public static getAuthToken()Ljava/lang/String;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getGuid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/AdvancedSettings;
    .registers 2
    .parameter "pref"

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mInstance:Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mInstance:Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    .line 66
    :cond_b
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_19

    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-eq v0, p0, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_19
    sget v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mRefCount:I

    .line 69
    sget-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mInstance:Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    return-object v0
.end method

.method public static getLastSyncTime()J
    .registers 2

    .prologue
    .line 153
    sget-wide v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastSyncTime:J

    return-wide v0
.end method

.method public static getLastUpdateTime()J
    .registers 2

    .prologue
    .line 171
    sget-wide v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastUpdateTime:J

    return-wide v0
.end method

.method public static getNextSyncSince()J
    .registers 2

    .prologue
    .line 144
    sget-wide v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextSyncSince:J

    return-wide v0
.end method

.method public static getNextUpdateSince()J
    .registers 2

    .prologue
    .line 162
    sget-wide v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextUpdateSince:J

    return-wide v0
.end method

.method public static getSyncEnabled()Z
    .registers 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSync:Z

    return v0
.end method

.method public static getUpdateEnabled()Z
    .registers 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mUpdate:Z

    return v0
.end method

.method private initConfs()V
    .registers 11

    .prologue
    const-wide/16 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const-string v9, "guid"

    .line 96
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "token"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mAuthToken:Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "update"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mUpdate:Z

    .line 98
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "sync"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSync:Z

    .line 99
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "guid"

    const/4 v2, 0x0

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mGuid:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mGuid:Ljava/lang/String;

    if-nez v1, :cond_50

    .line 101
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mGuid:Ljava/lang/String;

    .line 102
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "guid"

    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mGuid:Ljava/lang/String;

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_50
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "next_sync"

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextSyncSince:J

    .line 107
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "last_sync"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastSyncTime:J

    .line 108
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "next_update"

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextUpdateSince:J

    .line 109
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "last_update"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastUpdateTime:J

    .line 110
    return-void
.end method

.method public static releaseInstance()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 87
    sget v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mRefCount:I

    .line 88
    sget v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mRefCount:I

    if-nez v0, :cond_12

    .line 89
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->writeBack()V

    .line 90
    sput-object v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mInstance:Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    .line 91
    sput-object v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 93
    :cond_12
    return-void
.end method

.method public static setAuthToken(Ljava/lang/String;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 135
    if-nez p0, :cond_a

    const-string v0, ""

    :goto_4
    sput-object v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mAuthToken:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    .line 137
    return-void

    :cond_a
    move-object v0, p0

    .line 135
    goto :goto_4
.end method

.method public static setLastSyncTime(J)V
    .registers 3
    .parameter "ts"

    .prologue
    .line 157
    sput-wide p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastSyncTime:J

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    .line 159
    return-void
.end method

.method public static setLastUpdateTime(J)V
    .registers 3
    .parameter "ts"

    .prologue
    .line 175
    sput-wide p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastUpdateTime:J

    .line 176
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    .line 177
    return-void
.end method

.method public static setNextSyncSince(J)V
    .registers 3
    .parameter "ts"

    .prologue
    .line 148
    sput-wide p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextSyncSince:J

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    .line 150
    return-void
.end method

.method public static setNextUpdateSince(J)V
    .registers 3
    .parameter "ts"

    .prologue
    .line 166
    sput-wide p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextUpdateSince:J

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    .line 168
    return-void
.end method

.method public static setSyncEnabled(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 126
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSync:Z

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    .line 128
    return-void
.end method

.method public static setUpdateEnabled(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 117
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mUpdate:Z

    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    .line 119
    return-void
.end method

.method public static writeBack()V
    .registers 4

    .prologue
    .line 73
    sget-boolean v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mChanged:Z

    if-nez v1, :cond_5

    .line 84
    :goto_4
    return-void

    .line 75
    :cond_5
    sget-object v1, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "update"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mUpdate:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v1, "sync"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mSync:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v1, "token"

    sget-object v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mAuthToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string v1, "next_sync"

    sget-wide v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextSyncSince:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v1, "last_sync"

    sget-wide v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastSyncTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v1, "next_update"

    sget-wide v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mNextUpdateSince:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v1, "last_update"

    sget-wide v2, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->mLastUpdateTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method
