.class public final Lcom/google/common/io/protocol/ProtoBufUtil;
.super Ljava/lang/Object;
.source "ProtoBufUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static addProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "proto"
    .parameter "tag"

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 266
    .local v0, child:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 267
    return-object v0
.end method

.method public static createProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "proto"
    .parameter "tag"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 252
    .local v0, child:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 253
    return-object v0
.end method

.method public static getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;
    .registers 5
    .parameter "dataInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 130
    .local v1, size:I
    new-instance v0, Lcom/google/common/io/protocol/BoundInputStream;

    check-cast p0, Ljava/io/InputStream;

    .end local p0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/common/io/protocol/BoundInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 133
    .local v0, is:Ljava/io/InputStream;
    if-gez v1, :cond_19

    .line 134
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot read gzipped streams"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_19
    return-object v0
.end method

.method public static getProtoLongValueOrZero(Lcom/google/common/io/protocol/ProtoBuf;I)J
    .registers 6
    .parameter "proto"
    .parameter "tag"

    .prologue
    const-wide/16 v2, 0x0

    .line 86
    if-eqz p0, :cond_f

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_15

    move-result-wide v1

    .line 90
    :goto_e
    return-wide v1

    :cond_f
    move-wide v1, v2

    .line 86
    goto :goto_e

    .line 87
    :catch_11
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-wide v1, v2

    .line 88
    goto :goto_e

    .line 89
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move-wide v1, v2

    .line 90
    goto :goto_e
.end method

.method public static getProtoValueOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I
    .registers 5
    .parameter "proto"
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    .line 53
    if-eqz p0, :cond_d

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_13

    move-result v1

    .line 58
    :goto_c
    return v1

    :cond_d
    move v1, p2

    .line 53
    goto :goto_c

    .line 55
    :catch_f
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v1, p2

    .line 56
    goto :goto_c

    .line 57
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_13
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, p2

    .line 58
    goto :goto_c
.end method

.method public static getProtoValueOrEmpty(Lcom/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .registers 5
    .parameter "proto"
    .parameter "tag"

    .prologue
    const-string v2, ""

    .line 19
    if-eqz p0, :cond_f

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 21
    :goto_e
    return-object v1

    .line 19
    :cond_f
    const-string v1, ""
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_11} :catch_13

    move-object v1, v2

    goto :goto_e

    .line 20
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 21
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v1, ""

    move-object v1, v2

    goto :goto_e
.end method

.method public static getProtoValueOrNegativeOne(Lcom/google/common/io/protocol/ProtoBuf;I)J
    .registers 6
    .parameter "proto"
    .parameter "tag"

    .prologue
    const-wide/16 v2, -0x1

    .line 105
    if-eqz p0, :cond_f

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_15

    move-result-wide v1

    .line 109
    :goto_e
    return-wide v1

    :cond_f
    move-wide v1, v2

    .line 105
    goto :goto_e

    .line 106
    :catch_11
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-wide v1, v2

    .line 107
    goto :goto_e

    .line 108
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move-wide v1, v2

    .line 109
    goto :goto_e
.end method

.method public static getProtoValueOrZero(Lcom/google/common/io/protocol/ProtoBuf;I)I
    .registers 3
    .parameter "proto"
    .parameter "tag"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v0

    return v0
.end method

.method public static getSubProtoOrNull(Lcom/google/common/io/protocol/ProtoBuf;I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "proto"
    .parameter "sub"

    .prologue
    .line 37
    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getSubProtoValueOrDefault(Lcom/google/common/io/protocol/ProtoBuf;III)I
    .registers 6
    .parameter "proto"
    .parameter "sub"
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    .line 233
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/google/common/io/protocol/ProtoBuf;I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_d

    move-result v1

    .line 238
    :goto_8
    return v1

    .line 235
    :catch_9
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v1, p3

    .line 236
    goto :goto_8

    .line 237
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, p3

    .line 238
    goto :goto_8
.end method

.method public static getSubProtoValueOrEmpty(Lcom/google/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .registers 5
    .parameter "proto"
    .parameter "sub"
    .parameter "tag"

    .prologue
    .line 29
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/google/common/io/protocol/ProtoBuf;I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Lcom/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 31
    :goto_8
    return-object v1

    .line 30
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 31
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v1, ""

    goto :goto_8
.end method

.method public static getSubProtoValueOrNegativeOne(Lcom/google/common/io/protocol/ProtoBuf;II)J
    .registers 7
    .parameter "proto"
    .parameter "sub"
    .parameter "tag"

    .prologue
    const-wide/16 v2, -0x1

    .line 209
    :try_start_2
    invoke-static {p0, p1}, Lcom/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/google/common/io/protocol/ProtoBuf;I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrNegativeOne(Lcom/google/common/io/protocol/ProtoBuf;I)J
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_b
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_9} :catch_f

    move-result-wide v1

    .line 213
    :goto_a
    return-wide v1

    .line 210
    :catch_b
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-wide v1, v2

    .line 211
    goto :goto_a

    .line 212
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move-wide v1, v2

    .line 213
    goto :goto_a
.end method

.method public static readNextProtoBuf(Lcom/google/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/common/io/protocol/ProtoBuf;)I
    .registers 11
    .parameter "umbrellaType"
    .parameter "is"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v2

    .line 157
    .local v2, tagAndType:J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_d

    .line 158
    const/4 v4, -0x1

    .line 169
    .end local p0
    :goto_c
    return v4

    .line 161
    .restart local p0
    :cond_d
    const-wide/16 v4, 0x7

    and-long/2addr v4, v2

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1e

    .line 162
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Message expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_1e
    const/4 v4, 0x3

    ushr-long v4, v2, v4

    long-to-int v1, v4

    .line 166
    .local v1, tag:I
    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p2, p0}, Lcom/google/common/io/protocol/ProtoBuf;->setType(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 167
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v4

    long-to-int v0, v4

    .line 168
    .local v0, length:I
    invoke-virtual {p2, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move v4, v1

    .line 169
    goto :goto_c
.end method

.method public static readProtoBufResponse(Lcom/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter "protoBufType"
    .parameter "dataInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v1, p0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 186
    .local v1, response:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {p1}, Lcom/google/common/io/protocol/ProtoBufUtil;->getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v0

    .line 187
    .local v0, is:Ljava/io/InputStream;
    invoke-virtual {v1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 188
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 189
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 191
    :cond_19
    return-object v1
.end method

.method public static writeProtoBufToOutput(Ljava/io/DataOutput;Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter "output"
    .parameter "protoBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 281
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 282
    .local v1, bytes:[B
    array-length v2, v1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 283
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->write([B)V

    .line 284
    return-void
.end method
