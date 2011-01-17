.class public Lcom/google/android/inputmethod/pinyin/UpdateTask;
.super Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;
.source "UpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/UpdateTask$1;,
        Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateTask"

.field private static final TIMEOUT:I = 0x1388

.field private static final UPDATE_INDEX:Ljava/lang/String; = "https://clients2.google.com/ime/mobile_pinyin/update.xml"

.field private static final XML_CHARSET:Ljava/lang/String; = "charset"

.field private static final XML_DICTIONARY:Ljava/lang/String; = "dictionary"

.field private static final XML_FORMAT:Ljava/lang/String; = "format"

.field private static final XML_FORMAT_BINARY:Ljava/lang/String; = "binary"

.field private static final XML_FORMAT_PLAIN:Ljava/lang/String; = "plain"

.field private static final XML_INDEX:Ljava/lang/String; = "index"

.field private static final XML_REQUIRE:Ljava/lang/String; = "require"

.field private static final XML_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final XML_UPDATE:Ljava/lang/String; = "update"

.field private static final XML_URL:Ljava/lang/String; = "url"

.field private static mInstance:Lcom/google/android/inputmethod/pinyin/UpdateTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

.field private mRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mInstance:Lcom/google/android/inputmethod/pinyin/UpdateTask;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;)V
    .registers 4
    .parameter "ctxt"
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mContext:Landroid/content/Context;

    .line 65
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mRunning:Z

    .line 69
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 71
    return-void
.end method

.method private checkVersion(Ljava/lang/String;)Z
    .registers 13
    .parameter "require"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x3

    const-string v10, "."

    const-string v8, "\'"

    const-string v6, "UpdateTask"

    .line 291
    const-string v4, "UpdateTask"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 292
    const-string v4, "UpdateTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking version against \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2e
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, version:Ljava/lang/String;
    const-string v4, "UpdateTask"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 295
    const-string v4, "UpdateTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current version is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_61
    const-string v4, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, vers:[Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, reqs:[Ljava/lang/String;
    array-length v4, v2

    array-length v5, v1

    if-eq v4, v5, :cond_73

    move v4, v9

    .line 307
    :goto_72
    return v4

    .line 300
    :cond_73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_74
    array-length v4, v2

    if-ge v0, v4, :cond_86

    .line 301
    aget-object v4, v2, v0

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_83

    move v4, v9

    .line 302
    goto :goto_72

    .line 300
    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 304
    :cond_86
    const-string v4, "UpdateTask"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 305
    const-string v4, "UpdateTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version satisfied: current is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', required \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_b6
    const/4 v4, 0x1

    goto :goto_72
.end method

.method private getIndex(Ljava/lang/String;)Ljava/util/Properties;
    .registers 19
    .parameter "index"

    .prologue
    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 262
    .local v2, begin:J
    const-string v13, "UpdateTask"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 263
    const-string v13, "UpdateTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Getting update index from \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' @ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_32
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 265
    .local v4, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    .line 266
    .local v10, params:Lorg/apache/http/params/HttpParams;
    const/16 v13, 0x1388

    invoke-static {v10, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 267
    const/16 v13, 0x1388

    invoke-static {v10, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 268
    const-wide/16 v13, 0x1388

    invoke-static {v10, v13, v14}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 270
    const/4 v11, 0x0

    .line 271
    .local v11, prop:Ljava/util/Properties;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 273
    .local v9, method:Lorg/apache/http/client/methods/HttpGet;
    :try_start_53
    invoke-interface {v4, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 274
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_75

    .line 275
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 276
    .local v8, in:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->parseXMLIndex(Ljava/io/InputStream;)Ljava/util/Properties;

    move-result-object v11

    .line 277
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_75} :catch_b2

    .line 282
    .end local v8           #in:Ljava/io/InputStream;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    :cond_75
    :goto_75
    const/4 v4, 0x0

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 284
    .local v6, end:J
    const-string v13, "UpdateTask"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_b1

    .line 285
    const-string v13, "UpdateTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Getting update index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v11, :cond_d1

    const-string v15, "failed"

    :goto_94
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", used "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v6, v2

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " millisecond(s)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_b1
    return-object v11

    .line 279
    .end local v6           #end:J
    :catch_b2
    move-exception v13

    move-object v5, v13

    .line 280
    .local v5, e:Ljava/io/IOException;
    const-string v13, "UpdateTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in getting update index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 285
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #end:J
    :cond_d1
    const-string v15, "succeed"

    goto :goto_94
.end method

.method public static getInstance(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/UpdateTask;
    .registers 3
    .parameter "ctxt"
    .parameter "service"

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mInstance:Lcom/google/android/inputmethod/pinyin/UpdateTask;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;

    invoke-direct {v0, p0, p1}, Lcom/google/android/inputmethod/pinyin/UpdateTask;-><init>(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mInstance:Lcom/google/android/inputmethod/pinyin/UpdateTask;

    .line 77
    :cond_b
    sget-object v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mInstance:Lcom/google/android/inputmethod/pinyin/UpdateTask;

    return-object v0
.end method

.method private mergeBinaryDictionary(Ljava/lang/String;)Z
    .registers 29
    .parameter "url"

    .prologue
    .line 435
    const-string v24, "UpdateTask"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_2c

    .line 436
    const-string v24, "UpdateTask"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Merging binary dictionary \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_2c
    const/16 v20, 0x0

    .line 438
    .local v20, ret:Z
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 439
    .local v3, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    .line 440
    .local v15, params:Lorg/apache/http/params/HttpParams;
    const/16 v24, 0x1388

    move-object v0, v15

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 441
    const/16 v24, 0x1388

    move-object v0, v15

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 442
    const-wide/16 v24, 0x1388

    move-object v0, v15

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 444
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 446
    .local v12, method:Lorg/apache/http/client/methods/HttpGet;
    :try_start_57
    invoke-interface {v3, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 447
    .local v18, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_176

    .line 448
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 450
    .local v9, in:Ljava/io/InputStream;
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/inputmethod/pinyin/MessageTypes;->DICTIONARY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_7d} :catch_157
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_7d} :catch_20a

    .line 453
    .local v4, dict:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_7d
    invoke-virtual {v4, v9}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 454
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_83} :catch_104
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_83} :catch_20a

    .line 461
    const/16 v24, 0x1

    :try_start_85
    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v13

    .line 462
    .local v13, n:I
    const-string v24, "UpdateTask"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_b1

    .line 463
    const-string v24, "UpdateTask"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " phrase(s) in binary file"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_b1
    new-instance v19, Ljava/lang/StringBuffer;

    const-string v24, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 467
    .local v19, result:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_bd
    if-ge v8, v13, :cond_17a

    .line 468
    const/16 v24, 0x1

    move-object v0, v4

    move/from16 v1, v24

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v10

    .line 469
    .local v10, item:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x1

    move-object v0, v10

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 470
    .local v17, pinyin:Ljava/lang/String;
    const/16 v24, 0x2

    move-object v0, v10

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 471
    .local v16, phrase:Ljava/lang/String;
    const/16 v24, 0x3

    move-object v0, v10

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v21

    .line 472
    .local v21, timestamp:J
    const/16 v24, 0x4

    move-object v0, v10

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    .line 473
    .local v6, frequency:J
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_101

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_11d

    .line 467
    :cond_101
    :goto_101
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    .line 455
    .end local v6           #frequency:J
    .end local v8           #i:I
    .end local v10           #item:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v13           #n:I
    .end local v16           #phrase:Ljava/lang/String;
    .end local v17           #pinyin:Ljava/lang/String;
    .end local v19           #result:Ljava/lang/StringBuffer;
    .end local v21           #timestamp:J
    :catch_104
    move-exception v24

    move-object/from16 v5, v24

    .line 456
    .local v5, e:Ljava/io/IOException;
    const-string v24, "UpdateTask"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_11a

    .line 457
    const-string v24, "UpdateTask"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_11a
    const/16 v24, 0x0

    .line 501
    .end local v4           #dict:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v5           #e:Ljava/io/IOException;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    :goto_11c
    return v24

    .line 475
    .restart local v4       #dict:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v6       #frequency:J
    .restart local v8       #i:I
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v10       #item:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v13       #n:I
    .restart local v16       #phrase:Ljava/lang/String;
    .restart local v17       #pinyin:Ljava/lang/String;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #result:Ljava/lang/StringBuffer;
    .restart local v21       #timestamp:J
    :cond_11d
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 478
    const-string v24, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_156} :catch_157
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_156} :catch_20a

    goto :goto_101

    .line 495
    .end local v4           #dict:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v6           #frequency:J
    .end local v8           #i:I
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #item:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v13           #n:I
    .end local v16           #phrase:Ljava/lang/String;
    .end local v17           #pinyin:Ljava/lang/String;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #result:Ljava/lang/StringBuffer;
    .end local v21           #timestamp:J
    :catch_157
    move-exception v24

    move-object/from16 v5, v24

    .line 496
    .restart local v5       #e:Ljava/io/IOException;
    const-string v24, "UpdateTask"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error in merging binary dictionary: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v5           #e:Ljava/io/IOException;
    :cond_176
    :goto_176
    const/4 v3, 0x0

    move/from16 v24, v20

    .line 501
    goto :goto_11c

    .line 481
    .restart local v4       #dict:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v8       #i:I
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v13       #n:I
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #result:Ljava/lang/StringBuffer;
    :cond_17a
    :try_start_17a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 483
    .local v23, toMerge:Ljava/lang/String;
    const-string v24, "UpdateTask"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1aa

    .line 484
    const-string v24, "UpdateTask"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TOMERGE \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/google/android/inputmethod/pinyin/IDecoder;->updateBegin()Z

    move-result v14

    .line 487
    .local v14, ok:Z
    const/16 v24, 0x1

    move v0, v14

    move/from16 v1, v24

    if-ne v0, v1, :cond_176

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/google/android/inputmethod/pinyin/IDecoder;->updatePutLemmas(Ljava/lang/String;)I

    move-result v11

    .line 489
    .local v11, merged:I
    const-string v24, "UpdateTask"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1f4

    .line 490
    const-string v24, "UpdateTask"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Merged "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " lemma(s)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/google/android/inputmethod/pinyin/IDecoder;->updateFinish()V
    :try_end_1fd
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_1fd} :catch_157
    .catch Landroid/os/RemoteException; {:try_start_17a .. :try_end_1fd} :catch_20a

    .line 492
    if-lez v11, :cond_205

    const/16 v24, 0x1

    move/from16 v20, v24

    :goto_203
    goto/16 :goto_176

    :cond_205
    const/16 v24, 0x0

    move/from16 v20, v24

    goto :goto_203

    .line 497
    .end local v4           #dict:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v8           #i:I
    .end local v9           #in:Ljava/io/InputStream;
    .end local v11           #merged:I
    .end local v13           #n:I
    .end local v14           #ok:Z
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #result:Ljava/lang/StringBuffer;
    .end local v23           #toMerge:Ljava/lang/String;
    :catch_20a
    move-exception v24

    move-object/from16 v5, v24

    .line 498
    .local v5, e:Landroid/os/RemoteException;
    const-string v24, "UpdateTask"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error in merging binary dictionary: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_176
.end method

.method private mergePlainDictionary(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .parameter "url"
    .parameter "charset"

    .prologue
    .line 388
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2c

    .line 389
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Merging plain dictionary \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2c
    const/4 v15, 0x0

    .line 391
    .local v15, ret:Z
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 392
    .local v6, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    .line 393
    .local v13, params:Lorg/apache/http/params/HttpParams;
    const/16 v18, 0x1388

    move-object v0, v13

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 394
    const/16 v18, 0x1388

    move-object v0, v13

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 395
    const-wide/16 v18, 0x1388

    move-object v0, v13

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 397
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 399
    .local v11, method:Lorg/apache/http/client/methods/HttpGet;
    :try_start_56
    invoke-interface {v6, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 400
    .local v14, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c5

    .line 401
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 402
    .local v8, in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v19, 0x1000

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 404
    .local v5, bufferReader:Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 405
    .local v17, toMerge:Ljava/lang/StringBuffer;
    const/16 v18, 0x1000

    move/from16 v0, v18

    new-array v0, v0, [C

    move-object v4, v0

    .line 407
    .local v4, buffer:[C
    :goto_94
    invoke-virtual {v5, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v9

    .local v9, len:I
    if-lez v9, :cond_c7

    .line 408
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object v1, v4

    move/from16 v2, v18

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_a5} :catch_a6
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_a5} :catch_15b

    goto :goto_94

    .line 425
    .end local v4           #buffer:[C
    .end local v5           #bufferReader:Ljava/io/BufferedReader;
    .end local v8           #in:Ljava/io/InputStream;
    .end local v9           #len:I
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #toMerge:Ljava/lang/StringBuffer;
    :catch_a6
    move-exception v18

    move-object/from16 v7, v18

    .line 426
    .local v7, e:Ljava/io/IOException;
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error in merging plain dictionary: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v7           #e:Ljava/io/IOException;
    :cond_c5
    :goto_c5
    const/4 v6, 0x0

    .line 431
    return v15

    .line 409
    .restart local v4       #buffer:[C
    .restart local v5       #bufferReader:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v9       #len:I
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #toMerge:Ljava/lang/StringBuffer;
    :cond_c7
    :try_start_c7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 411
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 413
    .local v16, s:Ljava/lang/String;
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_fb

    .line 414
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TOMERGE \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/IDecoder;->updateBegin()Z

    move-result v12

    .line 417
    .local v12, ok:Z
    const/16 v18, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_c5

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/google/android/inputmethod/pinyin/IDecoder;->updatePutLemmas(Ljava/lang/String;)I

    move-result v10

    .line 419
    .local v10, merged:I
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_145

    .line 420
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Merged "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " lemma(s)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/IDecoder;->updateFinish()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_14e} :catch_a6
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_14e} :catch_15b

    .line 422
    if-lez v10, :cond_156

    const/16 v18, 0x1

    move/from16 v15, v18

    :goto_154
    goto/16 :goto_c5

    :cond_156
    const/16 v18, 0x0

    move/from16 v15, v18

    goto :goto_154

    .line 427
    .end local v4           #buffer:[C
    .end local v5           #bufferReader:Ljava/io/BufferedReader;
    .end local v8           #in:Ljava/io/InputStream;
    .end local v9           #len:I
    .end local v10           #merged:I
    .end local v12           #ok:Z
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #toMerge:Ljava/lang/StringBuffer;
    :catch_15b
    move-exception v18

    move-object/from16 v7, v18

    .line 428
    .local v7, e:Landroid/os/RemoteException;
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error in merging plain dictionary: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c5
.end method

.method private parseXMLIndex(Ljava/io/InputStream;)Ljava/util/Properties;
    .registers 23
    .parameter "in"

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 156
    .local v7, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 157
    .local v13, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 159
    new-instance v15, Ljava/util/Properties;

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    .line 160
    .local v15, update:Ljava/util/Properties;
    const/4 v10, 0x0

    .line 163
    .local v10, item:Ljava/util/Properties;
    :cond_18
    :goto_18
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, event:I
    const/16 v18, 0x1

    move v0, v6

    move/from16 v1, v18

    if-eq v0, v1, :cond_2c9

    .line 164
    const/16 v18, 0x2

    move v0, v6

    move/from16 v1, v18

    if-ne v0, v1, :cond_246

    .line 165
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "update"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_a2

    .line 166
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_47

    .line 167
    const-string v18, "UpdateTask"

    const-string v19, "TAG <update>"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_47
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 169
    .local v3, attrCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4c
    if-ge v9, v3, :cond_18

    .line 170
    invoke-interface {v13, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, name:Ljava/lang/String;
    invoke-interface {v13, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 172
    .local v17, value:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_9f

    .line 175
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Attr <"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "> = <"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ">"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_9f
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    .line 179
    .end local v3           #attrCount:I
    .end local v9           #i:I
    .end local v12           #name:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/String;
    :cond_a2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "dictionary"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_c6

    .line 181
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_bf

    .line 182
    const-string v18, "UpdateTask"

    const-string v19, "TAG <dictionary>"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_bf
    new-instance v10, Ljava/util/Properties;

    .end local v10           #item:Ljava/util/Properties;
    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 184
    .restart local v10       #item:Ljava/util/Properties;
    goto/16 :goto_18

    .line 186
    :cond_c6
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "index"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_ea

    .line 187
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_e3

    .line 188
    const-string v18, "UpdateTask"

    const-string v19, "TAG <index>"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_e3
    new-instance v10, Ljava/util/Properties;

    .end local v10           #item:Ljava/util/Properties;
    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 190
    .restart local v10       #item:Ljava/util/Properties;
    goto/16 :goto_18

    .line 192
    :cond_ea
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "timestamp"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_152

    .line 194
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, ts:Ljava/lang/String;
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_125

    .line 196
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TAG <timestamp> Value <"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ">"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_125
    const-string v18, "timestamp"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_12e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_12e} :catch_130
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12e} :catch_198

    goto/16 :goto_18

    .line 252
    .end local v6           #event:I
    .end local v7           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10           #item:Ljava/util/Properties;
    .end local v13           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #ts:Ljava/lang/String;
    .end local v15           #update:Ljava/util/Properties;
    :catch_130
    move-exception v18

    move-object/from16 v5, v18

    .line 253
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error in parsing update index: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_14f
    const/16 v18, 0x0

    :goto_151
    return-object v18

    .line 200
    .restart local v6       #event:I
    .restart local v7       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10       #item:Ljava/util/Properties;
    .restart local v13       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #update:Ljava/util/Properties;
    :cond_152
    :try_start_152
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "format"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_1b8

    .line 201
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, format:Ljava/lang/String;
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_18d

    .line 203
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TAG <format> Value <"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ">"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_18d
    const-string v18, "format"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_196
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_152 .. :try_end_196} :catch_130
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_196} :catch_198

    goto/16 :goto_18

    .line 254
    .end local v6           #event:I
    .end local v7           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8           #format:Ljava/lang/String;
    .end local v10           #item:Ljava/util/Properties;
    .end local v13           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v15           #update:Ljava/util/Properties;
    :catch_198
    move-exception v18

    move-object/from16 v5, v18

    .line 255
    .local v5, e:Ljava/io/IOException;
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error in parsing update index: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14f

    .line 207
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #event:I
    .restart local v7       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10       #item:Ljava/util/Properties;
    .restart local v13       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #update:Ljava/util/Properties;
    :cond_1b8
    :try_start_1b8
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "charset"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_1fe

    .line 208
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, charset:Ljava/lang/String;
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_1f3

    .line 210
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TAG <charset> Value <"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ">"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1f3
    const-string v18, "charset"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_18

    .line 214
    .end local v4           #charset:Ljava/lang/String;
    :cond_1fe
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "url"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_18

    .line 215
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 216
    .local v16, url:Ljava/lang/String;
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_23a

    .line 217
    const-string v18, "UpdateTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TAG <url> Value <"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ">"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_23a
    const-string v18, "url"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_18

    .line 221
    .end local v16           #url:Ljava/lang/String;
    :cond_246
    const/16 v18, 0x3

    move v0, v6

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 222
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "dictionary"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_28b

    .line 224
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_26a

    .line 225
    const-string v18, "UpdateTask"

    const-string v19, "TAG </dictionary>"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_26a
    const-string v18, "dictionary"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Vector;

    .line 228
    .local v11, list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    if-nez v11, :cond_285

    .line 229
    new-instance v11, Ljava/util/Vector;

    .end local v11           #list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 230
    .restart local v11       #list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    const-string v18, "dictionary"

    move-object v0, v15

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_285
    invoke-virtual {v11, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 233
    const/4 v10, 0x0

    .line 234
    goto/16 :goto_18

    .line 236
    .end local v11           #list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    :cond_28b
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "index"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_18

    .line 237
    const-string v18, "UpdateTask"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2a8

    .line 238
    const-string v18, "UpdateTask"

    const-string v19, "TAG </index>"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_2a8
    const-string v18, "index"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Vector;

    .line 241
    .restart local v11       #list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    if-nez v11, :cond_2c3

    .line 242
    new-instance v11, Ljava/util/Vector;

    .end local v11           #list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 243
    .restart local v11       #list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    const-string v18, "index"

    move-object v0, v15

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_2c3
    invoke-virtual {v11, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2c6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b8 .. :try_end_2c6} :catch_130
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_2c6} :catch_198

    .line 246
    const/4 v10, 0x0

    .line 247
    goto/16 :goto_18

    .end local v11           #list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    :cond_2c9
    move-object/from16 v18, v15

    .line 251
    goto/16 :goto_151
.end method

.method private update(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;)J
    .registers 8
    .parameter "index_starter"
    .parameter "result"

    .prologue
    const-wide/16 v3, 0x0

    .line 318
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->getIndex(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 319
    .local v0, index:Ljava/util/Properties;
    if-nez v0, :cond_a

    move-wide v2, v3

    .line 324
    :goto_9
    return-wide v2

    .line 321
    :cond_a
    const-string v2, "require"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, requireVersion:Ljava/lang/String;
    if-eqz v1, :cond_18

    invoke-direct {p0, v1}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->checkVersion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_18
    move-wide v2, v3

    .line 323
    goto :goto_9

    .line 324
    :cond_1a
    invoke-direct {p0, v0, p2}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->update_inner(Ljava/util/Properties;Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;)J

    move-result-wide v2

    goto :goto_9
.end method

.method private update_inner(Ljava/util/Properties;Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;)J
    .registers 20
    .parameter "index"
    .parameter "result"

    .prologue
    .line 329
    if-nez p1, :cond_5

    .line 330
    const-wide/16 v15, 0x0

    .line 384
    :goto_4
    return-wide v15

    .line 332
    :cond_5
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getNextUpdateSince()J

    move-result-wide v10

    .line 334
    .local v10, timeStamp:J
    const-string v15, "dictionary"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    .line 335
    .local v5, list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_15
    if-eqz v5, :cond_9b

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v4, v15, :cond_9b

    .line 336
    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Properties;

    .line 337
    .local v7, prop:Ljava/util/Properties;
    const-string v15, "timestamp"

    invoke-virtual {v7, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 338
    .local v12, ts:J
    cmp-long v15, v12, v10

    if-gtz v15, :cond_34

    .line 335
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 341
    :cond_34
    const-string v15, "url"

    invoke-virtual {v7, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 342
    .local v14, url:Ljava/lang/String;
    const-string v15, "charset"

    invoke-virtual {v7, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, charset:Ljava/lang/String;
    if-nez v3, :cond_44

    .line 344
    const-string v3, "UTF-8"

    .line 345
    :cond_44
    const/4 v6, 0x1

    .line 346
    .local v6, ok:Z
    const-string v15, "format"

    invoke-virtual {v7, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "plain"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_78

    .line 348
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mergePlainDictionary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 354
    :cond_5b
    :goto_5b
    if-eqz v6, :cond_8e

    .line 355
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->successCount:I

    move v15, v0

    add-int/lit8 v15, v15, 0x1

    move v0, v15

    move-object/from16 v1, p2

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->successCount:I

    .line 356
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->mostRecentTimeStamp:J

    move-wide v15, v0

    cmp-long v15, v12, v15

    if-lez v15, :cond_31

    .line 357
    move-wide v0, v12

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->mostRecentTimeStamp:J

    goto :goto_31

    .line 350
    :cond_78
    const-string v15, "format"

    invoke-virtual {v7, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "binary"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_5b

    .line 352
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mergeBinaryDictionary(Ljava/lang/String;)Z

    move-result v6

    goto :goto_5b

    .line 360
    :cond_8e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->failureCount:I

    move v15, v0

    add-int/lit8 v15, v15, 0x1

    move v0, v15

    move-object/from16 v1, p2

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->failureCount:I

    goto :goto_31

    .line 363
    .end local v3           #charset:Ljava/lang/String;
    .end local v6           #ok:Z
    .end local v7           #prop:Ljava/util/Properties;
    .end local v12           #ts:J
    .end local v14           #url:Ljava/lang/String;
    :cond_9b
    const-string v15, "index"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    check-cast v5, Ljava/util/Vector;

    .line 364
    .restart local v5       #list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Properties;>;"
    const/4 v4, 0x0

    :goto_a7
    if-eqz v5, :cond_111

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v4, v15, :cond_111

    .line 365
    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Properties;

    .line 366
    .restart local v7       #prop:Ljava/util/Properties;
    const-string v15, "timestamp"

    invoke-virtual {v7, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 367
    .restart local v12       #ts:J
    cmp-long v15, v12, v10

    if-gez v15, :cond_c6

    .line 364
    :cond_c3
    :goto_c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_a7

    .line 370
    :cond_c6
    const-string v15, "url"

    invoke-virtual {v7, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 371
    .restart local v14       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->update(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;)J

    move-result-wide v8

    .line 372
    .local v8, sub_ts:J
    const-wide/16 v15, 0x0

    cmp-long v15, v8, v15

    if-lez v15, :cond_104

    .line 373
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->successCount:I

    move v15, v0

    add-int/lit8 v15, v15, 0x1

    move v0, v15

    move-object/from16 v1, p2

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->successCount:I

    .line 374
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->mostRecentTimeStamp:J

    move-wide v15, v0

    cmp-long v15, v12, v15

    if-lez v15, :cond_f5

    .line 375
    move-wide v0, v12

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->mostRecentTimeStamp:J

    .line 377
    :cond_f5
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->mostRecentTimeStamp:J

    move-wide v15, v0

    cmp-long v15, v8, v15

    if-lez v15, :cond_c3

    .line 378
    move-wide v0, v8

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->mostRecentTimeStamp:J

    goto :goto_c3

    .line 381
    :cond_104
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->failureCount:I

    move v15, v0

    add-int/lit8 v15, v15, 0x1

    move v0, v15

    move-object/from16 v1, p2

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->failureCount:I

    goto :goto_c3

    .line 384
    .end local v7           #prop:Ljava/util/Properties;
    .end local v8           #sub_ts:J
    .end local v12           #ts:J
    .end local v14           #url:Ljava/lang/String;
    :cond_111
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->mostRecentTimeStamp:J

    move-wide v15, v0

    goto/16 :goto_4
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/AdvancedSettings;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->runInner()V

    .line 91
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->releaseInstance()V

    .line 92
    return-void
.end method

.method public runInner()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x3

    const-string v7, "UpdateTask"

    .line 95
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mIMEService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    if-nez v4, :cond_1a

    .line 96
    const-string v4, "UpdateTask"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 97
    const-string v4, "UpdateTask"

    const-string v4, "Task aborted: unbinded IME service."

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_19
    :goto_19
    return-void

    .line 101
    :cond_1a
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->getUpdateEnabled()Z

    move-result v4

    if-nez v4, :cond_30

    .line 102
    const-string v4, "UpdateTask"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 103
    const-string v4, "UpdateTask"

    const-string v4, "Task aborted: sync is not enabled"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 107
    :cond_30
    const-class v4, Lcom/google/android/inputmethod/pinyin/UpdateTask;

    monitor-enter v4

    .line 108
    :try_start_33
    iget-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mRunning:Z

    if-eqz v5, :cond_4c

    .line 109
    const-string v5, "UpdateTask"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 110
    const-string v5, "UpdateTask"

    const-string v6, "Task aborted: previous task is still running"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_47
    monitor-exit v4

    goto :goto_19

    .line 114
    :catchall_49
    move-exception v5

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_49

    throw v5

    .line 113
    :cond_4c
    const/4 v5, 0x1

    :try_start_4d
    iput-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mRunning:Z

    .line 114
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_49

    .line 116
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mContext:Landroid/content/Context;

    const/16 v5, 0x105

    invoke-static {v4, v5, v9, v10}, Lcom/google/android/inputmethod/pinyin/EventListener;->notify(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 120
    const-string v4, "UpdateTask"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 121
    const-string v4, "UpdateTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task started @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_7b
    new-instance v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;

    invoke-direct {v0, v10}, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;-><init>(Lcom/google/android/inputmethod/pinyin/UpdateTask$1;)V

    .line 125
    .local v0, result:Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;
    const-string v4, "https://clients2.google.com/ime/mobile_pinyin/update.xml"

    invoke-direct {p0, v4, v0}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->update(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;)J

    move-result-wide v2

    .line 126
    .local v2, timestamp:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_8f

    .line 127
    invoke-static {v2, v3}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setNextUpdateSince(J)V

    .line 129
    :cond_8f
    const-string v4, "UpdateTask"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 130
    const-string v4, "UpdateTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->successCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " succeed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->failureCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed, last timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->mostRecentTimeStamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_c9
    iget v4, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->successCount:I

    if-gtz v4, :cond_d5

    iget v4, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->successCount:I

    if-nez v4, :cond_114

    iget v4, v0, Lcom/google/android/inputmethod/pinyin/UpdateTask$UpdateResult;->failureCount:I

    if-nez v4, :cond_114

    :cond_d5
    move v1, v9

    .line 136
    .local v1, success:Z
    :goto_d6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/inputmethod/pinyin/AdvancedSettings;->setLastUpdateTime(J)V

    .line 138
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mContext:Landroid/content/Context;

    const/16 v5, 0x205

    if-eqz v1, :cond_116

    move v6, v9

    :goto_e4
    invoke-static {v4, v5, v6, v10}, Lcom/google/android/inputmethod/pinyin/EventListener;->notify(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 142
    const-class v4, Lcom/google/android/inputmethod/pinyin/UpdateTask;

    monitor-enter v4

    .line 143
    const/4 v5, 0x0

    :try_start_eb
    iput-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/UpdateTask;->mRunning:Z

    .line 144
    monitor-exit v4
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_118

    .line 146
    const-string v4, "UpdateTask"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 147
    const-string v4, "UpdateTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task finished @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .end local v1           #success:Z
    :cond_114
    move v1, v11

    .line 133
    goto :goto_d6

    .line 138
    .restart local v1       #success:Z
    :cond_116
    const/4 v6, 0x2

    goto :goto_e4

    .line 144
    :catchall_118
    move-exception v5

    :try_start_119
    monitor-exit v4
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw v5
.end method
