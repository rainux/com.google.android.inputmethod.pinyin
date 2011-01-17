.class public Lcom/google/common/io/protocol/BoundInputStream;
.super Ljava/io/InputStream;
.source "BoundInputStream.java"


# static fields
.field static final BUF_SIZE:I = 0x1000


# instance fields
.field private base:Ljava/io/InputStream;

.field private buf:[B

.field private bufPos:I

.field private bufSize:I

.field private remaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .parameter "base"
    .parameter "len"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/common/io/protocol/BoundInputStream;->base:Ljava/io/InputStream;

    .line 35
    iput p2, p0, Lcom/google/common/io/protocol/BoundInputStream;->remaining:I

    .line 37
    const/16 v0, 0x1000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->buf:[B

    .line 38
    return-void
.end method

.method private checkBuf()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    iget v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->remaining:I

    if-gtz v0, :cond_7

    move v0, v4

    .line 57
    :goto_6
    return v0

    .line 49
    :cond_7
    iget v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufPos:I

    iget v1, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufSize:I

    if-lt v0, v1, :cond_2a

    .line 50
    iget-object v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->base:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/common/io/protocol/BoundInputStream;->buf:[B

    iget v2, p0, Lcom/google/common/io/protocol/BoundInputStream;->remaining:I

    iget-object v3, p0, Lcom/google/common/io/protocol/BoundInputStream;->buf:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufSize:I

    .line 51
    iget v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufSize:I

    if-gtz v0, :cond_28

    .line 52
    iput v4, p0, Lcom/google/common/io/protocol/BoundInputStream;->remaining:I

    move v0, v4

    .line 53
    goto :goto_6

    .line 55
    :cond_28
    iput v4, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufPos:I

    .line 57
    :cond_2a
    const/4 v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public available()I
    .registers 3

    .prologue
    .line 61
    iget v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufSize:I

    iget v1, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRemaining()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->remaining:I

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/common/io/protocol/BoundInputStream;->checkBuf()Z

    move-result v0

    if-nez v0, :cond_8

    .line 66
    const/4 v0, -0x1

    .line 69
    :goto_7
    return v0

    .line 68
    :cond_8
    iget v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->remaining:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->remaining:I

    .line 69
    iget-object v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->buf:[B

    iget v1, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_7
.end method

.method public read([BII)I
    .registers 6
    .parameter "data"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/common/io/protocol/BoundInputStream;->checkBuf()Z

    move-result v0

    if-nez v0, :cond_8

    .line 74
    const/4 v0, -0x1

    .line 80
    :goto_7
    return v0

    .line 76
    :cond_8
    iget v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufSize:I

    iget v1, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufPos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 77
    iget-object v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->buf:[B

    iget v1, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->bufPos:I

    .line 79
    iget v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->remaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/common/io/protocol/BoundInputStream;->remaining:I

    move v0, p3

    .line 80
    goto :goto_7
.end method
