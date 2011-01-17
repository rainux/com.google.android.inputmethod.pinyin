.class public Lcom/google/android/inputmethod/pinyin/SyncEngine;
.super Ljava/lang/Object;
.source "SyncEngine.java"


# static fields
.field public static final DELIMITER:Ljava/lang/String; = ";"

.field private static final DOWNLOAD_AT_MOST:I = 0x20

.field public static final SEPARATOR:Ljava/lang/String; = ","

.field private static final SYNC_SERVER_URL:Ljava/lang/String; = "https://clients2.google.com/imesync/sync"

.field private static final TAG:Ljava/lang/String; = "SyncEngine"

.field private static final VERSION:I = 0x1

.field private static mInstance:Lcom/google/android/inputmethod/pinyin/SyncEngine;


# instance fields
.field private mDownloadTimestamp:J

.field private mLastError:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mInstance:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    .line 34
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mDownloadTimestamp:J

    .line 46
    return-void
.end method

.method private executeRPCCall(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/common/io/protocol/ProtoBuf;)Ljava/io/InputStream;
    .registers 23
    .parameter "client"
    .parameter "rpcName"
    .parameter "request"

    .prologue
    .line 56
    const-string v16, "SyncEngine"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_2c

    .line 57
    const-string v16, "SyncEngine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "executing RPC call <"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "> ..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_2c
    new-instance v6, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v16, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CSRPC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 60
    .local v6, csrpc:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 61
    const/4 v8, 0x0

    .line 62
    .local v8, header_byte:[B
    const/4 v5, 0x0

    .line 64
    .local v5, body_byte:[B
    :try_start_42
    invoke-virtual {v6}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v8

    .line 65
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_113

    move-result-object v5

    .line 71
    move-object v0, v8

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v14, v0

    .line 72
    .local v14, result:[B
    array-length v11, v8

    .line 73
    .local v11, lenth:I
    const/16 v16, 0x0

    move v0, v11

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v14, v16

    .line 74
    shr-int/lit8 v11, v11, 0x8

    .line 75
    const/16 v16, 0x1

    move v0, v11

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v14, v16

    .line 76
    shr-int/lit8 v11, v11, 0x8

    .line 77
    const/16 v16, 0x2

    move v0, v11

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v14, v16

    .line 78
    shr-int/lit8 v11, v11, 0x8

    .line 79
    const/16 v16, 0x3

    move v0, v11

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v14, v16

    .line 80
    const/16 v16, 0x0

    const/16 v17, 0x4

    move-object v0, v8

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v8

    move/from16 v1, v16

    move-object v2, v14

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    const/16 v16, 0x0

    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v5

    move/from16 v1, v16

    move-object v2, v14

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    const-string v16, "https://clients2.google.com/imesync/sync"

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 85
    .local v12, method:Lorg/apache/http/client/methods/HttpPost;
    new-instance v16, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 88
    :try_start_dc
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 89
    .local v13, response:Lorg/apache/http/HttpResponse;
    if-eqz v13, :cond_16c

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_16c

    .line 91
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 92
    .local v9, in:Ljava/io/InputStream;
    if-nez v9, :cond_12c

    .line 93
    const-string v16, "SyncEngine"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_110

    .line 94
    const-string v16, "SyncEngine"

    const-string v17, "No input stream"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_110} :catch_1b3

    .line 95
    :cond_110
    const/16 v16, 0x0

    .line 121
    .end local v9           #in:Ljava/io/InputStream;
    .end local v11           #lenth:I
    .end local v12           #method:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #result:[B
    :goto_112
    return-object v16

    .line 66
    :catch_113
    move-exception v16

    move-object/from16 v7, v16

    .line 67
    .local v7, e:Ljava/io/IOException;
    const-string v16, "SyncEngine"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_129

    .line 68
    const-string v16, "SyncEngine"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_129
    const/16 v16, 0x0

    goto :goto_112

    .line 98
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v11       #lenth:I
    .restart local v12       #method:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #result:[B
    :cond_12c
    const/16 v16, 0x4

    :try_start_12e
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v15, v0

    .line 99
    .local v15, tmp:[B
    invoke-virtual {v9, v15}, Ljava/io/InputStream;->read([B)I

    .line 100
    const/4 v10, 0x0

    .line 101
    .local v10, len:I
    const/16 v16, 0x0

    aget-byte v16, v15, v16

    mul-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x0

    add-int v10, v10, v16

    .line 102
    const/16 v16, 0x1

    aget-byte v16, v15, v16

    mul-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x8

    add-int v10, v10, v16

    .line 103
    const/16 v16, 0x2

    aget-byte v16, v15, v16

    mul-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x10

    add-int v10, v10, v16

    .line 104
    const/16 v16, 0x3

    aget-byte v16, v15, v16

    mul-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x18

    add-int v10, v10, v16

    .line 105
    move v0, v10

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object v0, v9

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-object/from16 v16, v9

    .line 106
    goto :goto_112

    .line 108
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #len:I
    .end local v15           #tmp:[B
    :cond_16c
    if-nez v13, :cond_182

    .line 109
    const-string v16, "SyncEngine"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_17f

    .line 110
    const-string v16, "SyncEngine"

    const-string v17, "No response returned."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    :cond_17f
    :goto_17f
    const/16 v16, 0x0

    goto :goto_112

    .line 112
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    :cond_182
    const-string v16, "SyncEngine"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_17f

    .line 113
    const-string v16, "SyncEngine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Response error <"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_1b2} :catch_1b3

    goto :goto_17f

    .line 117
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    :catch_1b3
    move-exception v16

    move-object/from16 v7, v16

    .line 118
    .restart local v7       #e:Ljava/io/IOException;
    const-string v16, "SyncEngine"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_17f

    .line 119
    const-string v16, "SyncEngine"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17f
.end method

.method public static getInstance()Lcom/google/android/inputmethod/pinyin/SyncEngine;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mInstance:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/google/android/inputmethod/pinyin/SyncEngine;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/SyncEngine;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mInstance:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    .line 51
    :cond_b
    sget-object v0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mInstance:Lcom/google/android/inputmethod/pinyin/SyncEngine;

    return-object v0
.end method

.method private parseClearResponse(Ljava/io/InputStream;)Z
    .registers 8
    .parameter "in"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "SyncEngine"

    .line 216
    if-nez p1, :cond_8

    move v2, v3

    .line 232
    :goto_7
    return v2

    .line 219
    :cond_8
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CLEAR_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 222
    .local v1, ur:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_f
    invoke-virtual {v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 223
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_1d

    .line 231
    invoke-virtual {v1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    move v2, v4

    .line 232
    goto :goto_7

    .line 224
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 225
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    .line 226
    const-string v2, "SyncEngine"

    const/4 v2, 0x3

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 227
    const-string v2, "SyncEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move v2, v3

    .line 228
    goto :goto_7
.end method

.method private parseDownloadResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 25
    .parameter "in"

    .prologue
    .line 125
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    .line 127
    if-nez p1, :cond_d

    .line 128
    const-string v19, ""

    .line 192
    :goto_c
    return-object v19

    .line 130
    :cond_d
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v19, Lcom/google/android/inputmethod/pinyin/MessageTypes;->DOWNLOAD_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 133
    .local v5, dr:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_17
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 134
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_1a4

    .line 142
    const/16 v19, 0x1

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    .line 143
    const-string v19, "SyncEngine"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_57

    .line 144
    const-string v19, "SyncEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error code is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_57
    const/16 v19, 0x2

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_71

    .line 146
    const/16 v19, 0x2

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mDownloadTimestamp:J

    .line 149
    :cond_71
    const/16 v19, 0x3

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v12

    .line 150
    .local v12, n:I
    const-string v19, "SyncEngine"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_bf

    .line 151
    const-string v19, "SyncEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " TS="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mDownloadTimestamp:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Count="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_bf
    new-instance v15, Ljava/lang/StringBuffer;

    const-string v19, ""

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 156
    .local v15, result:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_ca
    if-ge v7, v12, :cond_211

    .line 157
    const/16 v19, 0x3

    move-object v0, v5

    move/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v8

    .line 159
    .local v8, item:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v19, 0x1

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 160
    .local v3, component:I
    const/16 v19, 0x2

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 161
    .local v16, synckey:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v19, 0x3

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v17

    .line 163
    .local v17, syncvalue:Lcom/google/common/io/protocol/ProtoBuf;
    const-wide/16 v10, 0x0

    .line 165
    .local v10, mt:J
    const/16 v19, 0x5

    :try_start_f5
    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_107

    .line 166
    const/16 v19, 0x5

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_106} :catch_1c6

    move-result-wide v10

    .line 172
    :cond_107
    :goto_107
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 174
    .local v9, key:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v18

    .line 176
    .local v18, value:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v19, 0x1

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 178
    .local v14, pinyin:Ljava/lang/String;
    const/16 v19, 0x2

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, phrase:Ljava/lang/String;
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    .line 181
    .local v4, count:I
    const-string v19, "SyncEngine"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_194

    .line 182
    const-string v19, "SyncEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "> \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_194
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_1a0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1de

    .line 156
    :cond_1a0
    :goto_1a0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_ca

    .line 135
    .end local v3           #component:I
    .end local v4           #count:I
    .end local v7           #i:I
    .end local v8           #item:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v9           #key:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v10           #mt:J
    .end local v12           #n:I
    .end local v13           #phrase:Ljava/lang/String;
    .end local v14           #pinyin:Ljava/lang/String;
    .end local v15           #result:Ljava/lang/StringBuffer;
    .end local v16           #synckey:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v17           #syncvalue:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v18           #value:Lcom/google/common/io/protocol/ProtoBuf;
    :catch_1a4
    move-exception v19

    move-object/from16 v6, v19

    .line 136
    .local v6, e:Ljava/io/IOException;
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    .line 137
    const-string v19, "SyncEngine"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_1c2

    .line 138
    const-string v19, "SyncEngine"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1c2
    const-string v19, ""

    goto/16 :goto_c

    .line 168
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #component:I
    .restart local v7       #i:I
    .restart local v8       #item:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v10       #mt:J
    .restart local v12       #n:I
    .restart local v15       #result:Ljava/lang/StringBuffer;
    .restart local v16       #synckey:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v17       #syncvalue:Lcom/google/common/io/protocol/ProtoBuf;
    :catch_1c6
    move-exception v19

    move-object/from16 v6, v19

    .line 169
    .local v6, e:Ljava/lang/Exception;
    const-string v19, "SyncEngine"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_107

    .line 170
    const-string v19, "SyncEngine"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_107

    .line 187
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #count:I
    .restart local v9       #key:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v13       #phrase:Ljava/lang/String;
    .restart local v14       #pinyin:Ljava/lang/String;
    .restart local v18       #value:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1de
    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 189
    const-string v19, ";"

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a0

    .line 192
    .end local v3           #component:I
    .end local v4           #count:I
    .end local v8           #item:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v9           #key:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v10           #mt:J
    .end local v13           #phrase:Ljava/lang/String;
    .end local v14           #pinyin:Ljava/lang/String;
    .end local v16           #synckey:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v17           #syncvalue:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v18           #value:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_211
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_c
.end method

.method private parseUploadResponse(Ljava/io/InputStream;)Z
    .registers 8
    .parameter "in"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "SyncEngine"

    .line 196
    if-nez p1, :cond_8

    move v2, v3

    .line 212
    :goto_7
    return v2

    .line 199
    :cond_8
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/inputmethod/pinyin/MessageTypes;->UPLOAD_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 202
    .local v1, ur:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_f
    invoke-virtual {v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 203
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_1d

    .line 211
    invoke-virtual {v1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    move v2, v4

    .line 212
    goto :goto_7

    .line 204
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 205
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    .line 206
    const-string v2, "SyncEngine"

    const/4 v2, 0x3

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 207
    const-string v2, "SyncEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move v2, v3

    .line 208
    goto :goto_7
.end method

.method private prepareClearRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 9
    .parameter "authToken"
    .parameter "guid"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 311
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/MessageTypes;->CLEAR_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 312
    .local v1, clear:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v5, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 314
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/MessageTypes;->AUTH:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 315
    .local v0, auth:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/MessageTypes;->GAIA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 316
    .local v2, gaia:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v2, v5, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 317
    invoke-virtual {v2, v4, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 318
    invoke-virtual {v0, v5, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 320
    invoke-virtual {v1, v4, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 321
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 323
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 326
    return-object v1
.end method

.method private prepareDownloadRequest(Ljava/lang/String;JLjava/lang/String;I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 12
    .parameter "authToken"
    .parameter "timeStamp"
    .parameter "guid"
    .parameter "capacity"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 237
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/MessageTypes;->DOWNLOAD_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 238
    .local v1, download:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v5, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 239
    const/4 v3, 0x3

    invoke-virtual {v1, v3, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 242
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/MessageTypes;->AUTH:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 243
    .local v0, auth:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/MessageTypes;->GAIA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 244
    .local v2, gaia:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v2, v5, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 245
    invoke-virtual {v2, v4, p4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 246
    invoke-virtual {v0, v5, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 248
    invoke-virtual {v1, v4, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 250
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 252
    const/16 v3, 0x8

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 254
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 256
    if-lez p5, :cond_42

    .line 257
    const/16 v3, 0x9

    invoke-virtual {v1, v3, p5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 258
    :cond_42
    return-object v1
.end method

.method private prepareUploadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 26
    .parameter "uploadDic"
    .parameter "authToken"
    .parameter "guid"

    .prologue
    .line 263
    new-instance v17, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v20, Lcom/google/android/inputmethod/pinyin/MessageTypes;->UPLOAD_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 264
    .local v17, upload:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 266
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v20, Lcom/google/android/inputmethod/pinyin/MessageTypes;->AUTH:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 267
    .local v4, auth:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v6, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v20, Lcom/google/android/inputmethod/pinyin/MessageTypes;->GAIA:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 268
    .local v6, gaia:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v20, 0x1

    move-object v0, v6

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 269
    const/16 v20, 0x2

    move-object v0, v6

    move/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 270
    const/16 v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 272
    const/16 v20, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 273
    const/16 v20, 0x5

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 275
    const-string v20, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 276
    .local v19, words:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_6b
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move v0, v7

    move/from16 v1, v20

    if-ge v0, v1, :cond_15c

    .line 277
    aget-object v20, v19, v7

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 278
    .local v9, items:[Ljava/lang/String;
    const/16 v20, 0x4

    move-object v0, v9

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8c

    .line 276
    :goto_89
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    .line 280
    :cond_8c
    const/16 v20, 0x0

    aget-object v14, v9, v20

    .line 281
    .local v14, pinyin:Ljava/lang/String;
    const/16 v20, 0x1

    aget-object v13, v9, v20

    .line 282
    .local v13, phrase:Ljava/lang/String;
    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x2

    aget-object v21, v9, v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 283
    .local v5, count:I
    new-instance v20, Ljava/lang/Long;

    const/16 v21, 0x3

    aget-object v21, v9, v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 285
    .local v11, last_mod:J
    new-instance v8, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v20, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 286
    .local v8, item:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v15, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v20, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_KEY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 287
    .local v15, synckey:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v16, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v20, Lcom/google/android/inputmethod/pinyin/MessageTypes;->SYNC_VALUE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 288
    .local v16, syncvalue:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v10, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v20, Lcom/google/android/inputmethod/pinyin/MessageTypes;->USER_DICTIONARY_KEY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 289
    .local v10, key:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v20, Lcom/google/android/inputmethod/pinyin/MessageTypes;->USER_DICTIONARY_VALUE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 290
    .local v18, value:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v20, 0x1

    move-object v0, v10

    move/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 291
    const/16 v20, 0x2

    move-object v0, v10

    move/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 292
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 293
    const/16 v20, 0x1

    move-object v0, v15

    move/from16 v1, v20

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 294
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 296
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 298
    const/16 v20, 0x2

    move-object v0, v8

    move/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 299
    const/16 v20, 0x3

    move-object v0, v8

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 300
    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 301
    const/16 v20, 0x5

    move-object v0, v8

    move/from16 v1, v20

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 302
    const/16 v20, 0x6

    move-object v0, v8

    move/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 304
    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_89

    .line 307
    .end local v5           #count:I
    .end local v8           #item:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v9           #items:[Ljava/lang/String;
    .end local v10           #key:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v11           #last_mod:J
    .end local v13           #phrase:Ljava/lang/String;
    .end local v14           #pinyin:Ljava/lang/String;
    .end local v15           #synckey:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v16           #syncvalue:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v18           #value:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_15c
    return-object v17
.end method


# virtual methods
.method public clear(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "client"
    .parameter "authToken"
    .parameter "guid"

    .prologue
    .line 350
    invoke-direct {p0, p2, p3}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->prepareClearRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 351
    .local v0, clear:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    .line 352
    const-string v2, "Clear"

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->executeRPCCall(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/common/io/protocol/ProtoBuf;)Ljava/io/InputStream;

    move-result-object v1

    .line 354
    .local v1, in:Ljava/io/InputStream;
    invoke-direct {p0, v1}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->parseClearResponse(Ljava/io/InputStream;)Z

    move-result v2

    return v2
.end method

.method public download(Lorg/apache/http/client/HttpClient;Ljava/lang/String;JLjava/lang/String;I)Ljava/lang/String;
    .registers 15
    .parameter "client"
    .parameter "authToken"
    .parameter "timeStamp"
    .parameter "guid"
    .parameter "capacity"

    .prologue
    .line 331
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->prepareDownloadRequest(Ljava/lang/String;JLjava/lang/String;I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 333
    .local v6, download:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    .line 334
    const-string v0, "Download"

    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->executeRPCCall(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/common/io/protocol/ProtoBuf;)Ljava/io/InputStream;

    move-result-object v7

    .line 336
    .local v7, in:Ljava/io/InputStream;
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->parseDownloadResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 358
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    return v0
.end method

.method public getNextDownloadSince()J
    .registers 3

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mDownloadTimestamp:J

    return-wide v0
.end method

.method public upload(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "client"
    .parameter "uploadDic"
    .parameter "authToken"
    .parameter "guid"

    .prologue
    .line 341
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->prepareUploadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 342
    .local v1, upload:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SyncEngine;->mLastError:I

    .line 343
    const-string v2, "Upload"

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->executeRPCCall(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/common/io/protocol/ProtoBuf;)Ljava/io/InputStream;

    move-result-object v0

    .line 345
    .local v0, in:Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/SyncEngine;->parseUploadResponse(Ljava/io/InputStream;)Z

    move-result v2

    return v2
.end method
