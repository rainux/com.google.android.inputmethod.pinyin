.class public Lcom/google/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# static fields
.field public static final FALSE:Ljava/lang/Boolean; = null

.field private static final MSG_EOF:Ljava/lang/String; = "Unexp.EOF"

.field private static final MSG_MISMATCH:Ljava/lang/String; = "Type mismatch"

.field private static final MSG_UNSUPPORTED:Ljava/lang/String; = "Unsupp.Type"

.field private static SMALL_NUMBERS:[Ljava/lang/Long; = null

.field public static final TRUE:Ljava/lang/Boolean; = null

.field private static final VARINT_MAX_BYTES:I = 0xa

.field static final WIRETYPE_END_GROUP:I = 0x4

.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_START_GROUP:I = 0x3

.field static final WIRETYPE_VARINT:I


# instance fields
.field private msgType:Lcom/google/common/io/protocol/ProtoBufType;

.field private final values:Ljava/util/Vector;

.field private final wireTypes:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    .line 42
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v5}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Long;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x4

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x6

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x7

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x8

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x9

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xb

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xc

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xd

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xe

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xf

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    .line 80
    iput-object p1, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    .line 81
    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .registers 8
    .parameter "tag"
    .parameter "object"

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v1

    .line 834
    .local v1, tagType:I
    const/16 v2, 0x10

    if-ne v1, v2, :cond_d

    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-nez v2, :cond_d

    .line 893
    .end local p2
    :cond_c
    :goto_c
    :pswitch_c
    :sswitch_c
    return-void

    .line 838
    .restart local p2
    :cond_d
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3c

    .line 839
    const/16 v2, 0x18

    if-eq v1, v2, :cond_c

    if-eqz v1, :cond_c

    .line 896
    .end local p2
    :cond_17
    :goto_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type mismatch type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 843
    .restart local p2
    :cond_3c
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_44

    .line 844
    packed-switch v1, :pswitch_data_7e

    :pswitch_43
    goto :goto_17

    .line 864
    :cond_44
    instance-of v2, p2, [B

    if-eqz v2, :cond_4c

    .line 865
    sparse-switch v1, :sswitch_data_c8

    goto :goto_17

    .line 874
    :cond_4c
    instance-of v2, p2, Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v2, :cond_75

    .line 875
    sparse-switch v1, :sswitch_data_e2

    goto :goto_17

    .line 881
    :sswitch_54
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object v0, p2

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v2, :cond_c

    check-cast p2, Lcom/google/common/io/protocol/ProtoBuf;

    .end local p2
    iget-object v2, p2, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_17

    goto :goto_c

    .line 887
    .restart local p2
    :cond_75
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 888
    sparse-switch v1, :sswitch_data_f8

    goto :goto_17

    .line 844
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_c
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 865
    :sswitch_data_c8
    .sparse-switch
        0x2 -> :sswitch_c
        0x19 -> :sswitch_c
        0x1b -> :sswitch_c
        0x1c -> :sswitch_c
        0x23 -> :sswitch_c
        0x24 -> :sswitch_c
    .end sparse-switch

    .line 875
    :sswitch_data_e2
    .sparse-switch
        0x2 -> :sswitch_54
        0x3 -> :sswitch_54
        0x19 -> :sswitch_54
        0x1a -> :sswitch_54
        0x1b -> :sswitch_54
    .end sparse-switch

    .line 888
    :sswitch_data_f8
    .sparse-switch
        0x2 -> :sswitch_c
        0x19 -> :sswitch_c
        0x1c -> :sswitch_c
        0x24 -> :sswitch_c
    .end sparse-switch
.end method

.method private convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11
    .parameter "obj"
    .parameter "tagType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1046
    packed-switch p2, :pswitch_data_a4

    .line 1107
    :pswitch_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unsupp.Type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_d
    move-object v4, p1

    .line 1104
    .end local p1
    :goto_e
    return-object v4

    .line 1051
    .restart local p1
    :pswitch_f
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_15

    move-object v4, p1

    .line 1052
    goto :goto_e

    .line 1054
    :cond_15
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v4, v4

    packed-switch v4, :pswitch_data_d2

    .line 1060
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Type mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1056
    :pswitch_27
    sget-object v4, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_e

    .line 1058
    :pswitch_2a
    sget-object v4, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_e

    .line 1070
    .restart local p1
    :pswitch_2d
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_41

    .line 1071
    sget-object v4, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3f

    move v5, v7

    :goto_3c
    aget-object v4, v4, v5

    goto :goto_e

    :cond_3f
    move v5, v6

    goto :goto_3c

    .restart local p1
    :cond_41
    move-object v4, p1

    .line 1073
    goto :goto_e

    .line 1076
    :pswitch_43
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_4e

    .line 1077
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_e

    .line 1078
    .restart local p1
    :cond_4e
    instance-of v4, p1, Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v4, :cond_6d

    .line 1079
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1081
    .local v1, buf:Ljava/io/ByteArrayOutputStream;
    :try_start_57
    check-cast p1, Lcom/google/common/io/protocol/ProtoBuf;

    .end local p1
    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 1082
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5f} :catch_61

    move-result-object v4

    goto :goto_e

    .line 1083
    :catch_61
    move-exception v4

    move-object v3, v4

    .line 1084
    .local v3, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local p1
    :cond_6d
    move-object v4, p1

    .line 1087
    goto :goto_e

    .line 1090
    :pswitch_6f
    instance-of v4, p1, [B

    if-eqz v4, :cond_7f

    .line 1091
    check-cast p1, [B

    .end local p1
    move-object v0, p1

    check-cast v0, [B

    move-object v2, v0

    .line 1092
    .local v2, data:[B
    array-length v4, v2

    invoke-static {v2, v6, v4, v7}, Lcom/google/common/io/protocol/ProtoBuf;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .end local v2           #data:[B
    .restart local p1
    :cond_7f
    move-object v4, p1

    .line 1094
    goto :goto_e

    .line 1097
    :pswitch_81
    instance-of v4, p1, [B

    if-eqz v4, :cond_a1

    .line 1099
    :try_start_85
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {v4, p1}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_92} :catch_95

    move-result-object v4

    goto/16 :goto_e

    .line 1100
    :catch_95
    move-exception v4

    move-object v3, v4

    .line 1101
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v3           #e:Ljava/io/IOException;
    .restart local p1
    :cond_a1
    move-object v4, p1

    .line 1104
    goto/16 :goto_e

    .line 1046
    :pswitch_data_a4
    .packed-switch 0x10
        :pswitch_d
        :pswitch_5
        :pswitch_5
        :pswitch_2d
        :pswitch_5
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_f
        :pswitch_43
        :pswitch_81
        :pswitch_81
        :pswitch_6f
        :pswitch_5
        :pswitch_5
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_43
        :pswitch_6f
    .end packed-switch

    .line 1054
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method static decodeUtf8([BIIZ)Ljava/lang/String;
    .registers 11
    .parameter "data"
    .parameter "start"
    .parameter "end"
    .parameter "tolerant"

    .prologue
    .line 1282
    new-instance v5, Ljava/lang/StringBuffer;

    sub-int v0, p2, p1

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1283
    .local v5, sb:Ljava/lang/StringBuffer;
    move p1, p1

    .line 1285
    .local p1, pos:I
    :goto_8
    if-ge p1, p2, :cond_b2

    .line 1286
    add-int/lit8 v4, p1, 0x1

    .end local p1           #pos:I
    .local v4, pos:I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 1287
    .local p1, b:I
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1a

    .line 1288
    int-to-char p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local p1           #b:I
    move p1, v4

    .end local v4           #pos:I
    .local p1, pos:I
    goto :goto_8

    .line 1289
    .restart local v4       #pos:I
    .local p1, b:I
    :cond_1a
    const/16 v0, 0xf5

    if-lt p1, v0, :cond_2e

    .line 1290
    if-nez p3, :cond_28

    .line 1291
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Invalid UTF8"

    .end local p1           #b:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1293
    .restart local p0
    .restart local p1       #b:I
    :cond_28
    int-to-char p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local p1           #b:I
    move p1, v4

    .end local v4           #pos:I
    .local p1, pos:I
    goto :goto_8

    .line 1295
    .restart local v4       #pos:I
    .local p1, b:I
    :cond_2e
    const/16 v0, 0xe0

    .line 1296
    .local v0, border:I
    const/4 v1, 0x1

    .line 1297
    .local v1, count:I
    const/16 v3, 0x80

    .line 1298
    .local v3, minCode:I
    const/16 v2, 0x1f

    .line 1299
    .local v2, mask:I
    :goto_35
    if-lt p1, v0, :cond_47

    .line 1300
    shr-int/lit8 v0, v0, 0x1

    or-int/lit16 v0, v0, 0x80

    .line 1301
    const/4 v6, 0x1

    if-ne v1, v6, :cond_45

    const/4 v6, 0x4

    :goto_3f
    shl-int/2addr v3, v6

    .line 1302
    add-int/lit8 v1, v1, 0x1

    .line 1303
    shr-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 1301
    :cond_45
    const/4 v6, 0x5

    goto :goto_3f

    .line 1305
    :cond_47
    and-int/2addr p1, v2

    .line 1307
    .local p1, code:I
    const/4 v0, 0x0

    .end local v2           #mask:I
    .local v0, i:I
    :goto_49
    if-ge v0, v1, :cond_76

    .line 1308
    shl-int/lit8 p1, p1, 0x6

    .line 1309
    if-lt v4, p2, :cond_59

    .line 1310
    if-nez p3, :cond_b7

    .line 1311
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Invalid UTF8"

    .end local p1           #code:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1315
    .restart local p0
    .restart local p1       #code:I
    :cond_59
    if-nez p3, :cond_6b

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xc0

    const/16 v6, 0x80

    if-eq v2, v6, :cond_6b

    .line 1316
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Invalid UTF8"

    .end local p1           #code:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1318
    .restart local p0
    .restart local p1       #code:I
    :cond_6b
    add-int/lit8 v2, v4, 0x1

    .end local v4           #pos:I
    .local v2, pos:I
    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr p1, v4

    .line 1307
    :goto_72
    add-int/lit8 v0, v0, 0x1

    move v4, v2

    .end local v2           #pos:I
    .restart local v4       #pos:I
    goto :goto_49

    .line 1323
    :cond_76
    if-nez p3, :cond_7a

    if-lt p1, v3, :cond_84

    :cond_7a
    const v0, 0xd800

    if-lt p1, v0, :cond_8c

    .end local v0           #i:I
    const v0, 0xdfff

    if-gt p1, v0, :cond_8c

    .line 1324
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Invalid UTF8"

    .end local p1           #code:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1327
    .restart local p0
    .restart local p1       #code:I
    :cond_8c
    const v0, 0xffff

    if-gt p1, v0, :cond_98

    .line 1328
    int-to-char p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local p1           #code:I
    move p1, v4

    .end local v4           #pos:I
    .local p1, pos:I
    goto/16 :goto_8

    .line 1330
    .restart local v4       #pos:I
    .local p1, code:I
    :cond_98
    const/high16 v0, 0x1

    sub-int/2addr p1, v0

    .line 1331
    const v0, 0xd800

    shr-int/lit8 v1, p1, 0xa

    or-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1332
    .end local v1           #count:I
    const v0, 0xdc00

    and-int/lit16 p1, p1, 0x3ff

    or-int/2addr p1, v0

    int-to-char p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local p1           #code:I
    move p1, v4

    .end local v4           #pos:I
    .local p1, pos:I
    goto/16 :goto_8

    .line 1336
    .end local v3           #minCode:I
    :cond_b2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    return-object p0

    .restart local v0       #i:I
    .restart local v1       #count:I
    .restart local v3       #minCode:I
    .restart local v4       #pos:I
    .restart local p0
    .local p1, code:I
    :cond_b7
    move v2, v4

    .end local v4           #pos:I
    .restart local v2       #pos:I
    goto :goto_72
.end method

.method static encodeUtf8(Ljava/lang/String;[BI)I
    .registers 12
    .parameter "s"
    .parameter "buf"
    .parameter "pos"

    .prologue
    const v8, 0xd800

    const v7, 0xfc00

    .line 1209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1210
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v4, :cond_b7

    .line 1211
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1214
    .local v0, code:I
    if-lt v0, v8, :cond_3e

    const v5, 0xdfff

    if-gt v0, v5, :cond_3e

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_3e

    .line 1215
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1220
    .local v2, codeLo:I
    and-int v5, v2, v7

    and-int v6, v0, v7

    xor-int/2addr v5, v6

    const/16 v6, 0x400

    if-ne v5, v6, :cond_3e

    .line 1222
    add-int/lit8 v3, v3, 0x1

    .line 1225
    and-int v5, v2, v7

    if-ne v5, v8, :cond_4c

    .line 1226
    move v1, v2

    .line 1227
    .local v1, codeHi:I
    move v2, v0

    .line 1231
    :goto_33
    and-int/lit16 v5, v1, 0x3ff

    shl-int/lit8 v5, v5, 0xa

    and-int/lit16 v6, v2, 0x3ff

    or-int/2addr v5, v6

    const/high16 v6, 0x1

    add-int v0, v5, v6

    .line 1234
    .end local v1           #codeHi:I
    .end local v2           #codeLo:I
    :cond_3e
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_4e

    .line 1235
    if-eqz p1, :cond_47

    .line 1236
    int-to-byte v5, v0

    aput-byte v5, p1, p2

    .line 1238
    :cond_47
    add-int/lit8 p2, p2, 0x1

    .line 1210
    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1229
    .restart local v2       #codeLo:I
    :cond_4c
    move v1, v0

    .restart local v1       #codeHi:I
    goto :goto_33

    .line 1239
    .end local v1           #codeHi:I
    .end local v2           #codeLo:I
    :cond_4e
    const/16 v5, 0x7ff

    if-gt v0, v5, :cond_67

    .line 1241
    if-eqz p1, :cond_64

    .line 1242
    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 1243
    add-int/lit8 v5, p2, 0x1

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1245
    :cond_64
    add-int/lit8 p2, p2, 0x2

    goto :goto_49

    .line 1246
    :cond_67
    const v5, 0xffff

    if-gt v0, v5, :cond_8c

    .line 1248
    if-eqz p1, :cond_89

    .line 1249
    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 1250
    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1251
    add-int/lit8 v5, p2, 0x2

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1253
    :cond_89
    add-int/lit8 p2, p2, 0x3

    goto :goto_49

    .line 1255
    :cond_8c
    if-eqz p1, :cond_b4

    .line 1256
    shr-int/lit8 v5, v0, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 1257
    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1258
    add-int/lit8 v5, p2, 0x2

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1259
    add-int/lit8 v5, p2, 0x3

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1261
    :cond_b4
    add-int/lit8 p2, p2, 0x4

    goto :goto_49

    .line 1265
    .end local v0           #code:I
    :cond_b7
    return p2
.end method

.method static encodeUtf8(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 1193
    const/4 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .line 1194
    .local v0, len:I
    new-array v1, v0, [B

    .line 1195
    .local v1, result:[B
    invoke-static {p0, v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;[BI)I

    .line 1196
    return-object v1
.end method

.method private getDataSize(II)I
    .registers 10
    .parameter "tag"
    .parameter "i"

    .prologue
    .line 537
    shl-int/lit8 v5, p1, 0x3

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    .line 539
    .local v2, tagSize:I
    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_5e

    .line 556
    :pswitch_e
    const/16 v5, 0x10

    invoke-direct {p0, p1, p2, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    .line 560
    .local v1, o:Ljava/lang/Object;
    instance-of v5, v1, [B

    if-eqz v5, :cond_4a

    .line 561
    check-cast v1, [B

    .end local v1           #o:Ljava/lang/Object;
    check-cast v1, [B

    array-length v0, v1

    .line 568
    .local v0, contentSize:I
    :goto_1d
    int-to-long v5, v0

    invoke-static {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v0

    .end local v0           #contentSize:I
    :goto_24
    return v5

    .line 541
    :pswitch_25
    add-int/lit8 v5, v2, 0x4

    goto :goto_24

    .line 543
    :pswitch_28
    add-int/lit8 v5, v2, 0x8

    goto :goto_24

    .line 545
    :pswitch_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v3

    .line 546
    .local v3, value:J
    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 547
    invoke-static {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v3

    .line 549
    :cond_39
    invoke-static {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v5

    add-int/2addr v5, v2

    goto :goto_24

    .line 552
    .end local v3           #value:J
    :pswitch_3f
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v2

    goto :goto_24

    .line 562
    .restart local v1       #o:Ljava/lang/Object;
    :cond_4a
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_57

    .line 563
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .restart local v0       #contentSize:I
    goto :goto_1d

    .line 565
    .end local v0           #contentSize:I
    .restart local v1       #o:Ljava/lang/Object;
    :cond_57
    check-cast v1, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v0

    .restart local v0       #contentSize:I
    goto :goto_1d

    .line 539
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_e
        :pswitch_3f
        :pswitch_e
        :pswitch_25
    .end packed-switch
.end method

.method private getDefault(I)Ljava/lang/Object;
    .registers 3
    .parameter "tag"

    .prologue
    .line 905
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 911
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0

    .line 909
    :sswitch_e
    const/4 v0, 0x0

    goto :goto_d

    .line 905
    :sswitch_data_10
    .sparse-switch
        0x10 -> :sswitch_e
        0x1a -> :sswitch_e
        0x1b -> :sswitch_e
    .end sparse-switch
.end method

.method private getObject(II)Ljava/lang/Object;
    .registers 5
    .parameter "tag"
    .parameter "desiredType"

    .prologue
    .line 923
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 925
    .local v0, count:I
    if-nez v0, :cond_b

    .line 926
    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v1

    .line 933
    :goto_a
    return-object v1

    .line 929
    :cond_b
    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    .line 930
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 933
    :cond_14
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a
.end method

.method private getObject(III)Ljava/lang/Object;
    .registers 9
    .parameter "tag"
    .parameter "index"
    .parameter "desiredType"

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    if-lt p2, v4, :cond_c

    .line 944
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 947
    :cond_c
    iget-object v4, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 949
    .local v1, o:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 950
    .local v3, v:Ljava/util/Vector;
    instance-of v4, v1, Ljava/util/Vector;

    if-eqz v4, :cond_1f

    .line 951
    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    move-object v3, v0

    .line 952
    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 955
    :cond_1f
    invoke-direct {p0, v1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 957
    .local v2, o2:Ljava/lang/Object;
    if-eq v2, v1, :cond_2c

    if-eqz v1, :cond_2c

    .line 958
    if-nez v3, :cond_2d

    .line 959
    invoke-direct {p0, p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 965
    :cond_2c
    :goto_2c
    return-object v2

    .line 961
    :cond_2d
    invoke-virtual {v3, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2c
.end method

.method private static getVarIntSize(J)I
    .registers 5
    .parameter "i"

    .prologue
    .line 576
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_9

    .line 577
    const/16 v1, 0xa

    .line 584
    :goto_8
    return v1

    .line 579
    :cond_9
    const/4 v0, 0x1

    .line 580
    .local v0, size:I
    :goto_a
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_15

    .line 581
    add-int/lit8 v0, v0, 0x1

    .line 582
    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_a

    :cond_15
    move v1, v0

    .line 584
    goto :goto_8
.end method

.method private final getWireType(I)I
    .registers 7
    .parameter "tag"

    .prologue
    const/16 v4, 0x2f

    .line 975
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 977
    .local v0, tagType:I
    packed-switch v0, :pswitch_data_40

    .line 1012
    :pswitch_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_34
    move v1, v0

    .line 1010
    :goto_35
    return v1

    .line 994
    :pswitch_36
    const/4 v1, 0x0

    goto :goto_35

    .line 1000
    :pswitch_38
    const/4 v1, 0x2

    goto :goto_35

    .line 1004
    :pswitch_3a
    const/4 v1, 0x1

    goto :goto_35

    .line 1008
    :pswitch_3c
    const/4 v1, 0x5

    goto :goto_35

    .line 1010
    :pswitch_3e
    const/4 v1, 0x3

    goto :goto_35

    .line 977
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_9
        :pswitch_34
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_34
        :pswitch_3a
        :pswitch_3c
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_3a
        :pswitch_3c
        :pswitch_36
        :pswitch_38
        :pswitch_3e
        :pswitch_38
        :pswitch_38
        :pswitch_36
        :pswitch_36
        :pswitch_3c
        :pswitch_3a
        :pswitch_36
        :pswitch_36
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method private insertObject(IILjava/lang/Object;)V
    .registers 9
    .parameter "tag"
    .parameter "index"
    .parameter "o"

    .prologue
    .line 1021
    invoke-direct {p0, p1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1023
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1025
    .local v1, count:I
    if-nez v1, :cond_d

    .line 1026
    invoke-direct {p0, p1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1039
    :goto_c
    return-void

    .line 1028
    :cond_d
    iget-object v4, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 1030
    .local v2, curr:Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/Vector;

    if-eqz v4, :cond_1f

    .line 1031
    move-object v0, v2

    check-cast v0, Ljava/util/Vector;

    move-object v3, v0

    .line 1037
    .local v3, v:Ljava/util/Vector;
    :goto_1b
    invoke-virtual {v3, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_c

    .line 1033
    .end local v3           #v:Ljava/util/Vector;
    :cond_1f
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1034
    .restart local v3       #v:Ljava/util/Vector;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1035
    iget-object v4, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v4, v3, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1b
.end method

.method private isZigZagEncodedType(I)Z
    .registers 4
    .parameter "tag"

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 666
    .local v0, declaredType:I
    const/16 v1, 0x21

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method static readVarInt(Ljava/io/InputStream;Z)J
    .registers 9
    .parameter "is"
    .parameter "permitEOF"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1125
    const-wide/16 v2, 0x0

    .line 1126
    .local v2, result:J
    const/4 v4, 0x0

    .line 1130
    .local v4, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/16 v5, 0xa

    if-ge v0, v5, :cond_27

    .line 1131
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1133
    .local v1, in:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1e

    .line 1134
    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    .line 1135
    const-wide/16 v5, -0x1

    .line 1148
    .end local v1           #in:I
    :goto_15
    return-wide v5

    .line 1137
    .restart local v1       #in:I
    :cond_16
    new-instance v5, Ljava/io/IOException;

    const-string v6, "EOF"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1140
    :cond_1e
    and-int/lit8 v5, v1, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v4

    or-long/2addr v2, v5

    .line 1142
    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_29

    .end local v1           #in:I
    :cond_27
    move-wide v5, v2

    .line 1148
    goto :goto_15

    .line 1146
    .restart local v1       #in:I
    :cond_29
    add-int/lit8 v4, v4, 0x7

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private setObject(ILjava/lang/Object;)V
    .registers 5
    .parameter "tag"
    .parameter "o"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_f

    .line 1157
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 1159
    :cond_f
    if-eqz p2, :cond_14

    .line 1160
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1162
    :cond_14
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1163
    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)V
    .registers 7
    .parameter "os"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_14

    .line 1171
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    long-to-int v1, v2

    .line 1173
    .local v1, toWrite:I
    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    .line 1175
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_15

    .line 1176
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1182
    .end local v1           #toWrite:I
    :cond_14
    return-void

    .line 1179
    .restart local v1       #toWrite:I
    :cond_15
    or-int/lit16 v2, v1, 0x80

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static zigZagDecode(J)J
    .registers 6
    .parameter "v"

    .prologue
    .line 682
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 683
    return-wide p0
.end method

.method private static zigZagEncode(J)J
    .registers 6
    .parameter "v"

    .prologue
    .line 674
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 675
    return-wide p0
.end method


# virtual methods
.method public addBool(IZ)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertBool(IIZ)V

    .line 103
    return-void
.end method

.method public addBytes(I[B)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertBytes(II[B)V

    .line 110
    return-void
.end method

.method public addDouble(ID)V
    .registers 5
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->insertDouble(IID)V

    .line 138
    return-void
.end method

.method public addFloat(IF)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertFloat(IIF)V

    .line 131
    return-void
.end method

.method public addInt(II)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertInt(III)V

    .line 117
    return-void
.end method

.method public addLong(IJ)V
    .registers 5
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    .line 124
    return-void
.end method

.method public addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "tag"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->newProtoBufForTag(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 155
    .local v0, child:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 156
    return-object v0
.end method

.method public addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertProtoBuf(IILcom/google/common/io/protocol/ProtoBuf;)V

    .line 145
    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertString(IILjava/lang/String;)V

    .line 174
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 88
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 89
    return-void
.end method

.method public createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "tag"

    .prologue
    .line 95
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, p0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method

.method public getBool(I)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 180
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBool(II)Z
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 188
    const/16 v0, 0x18

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .registers 3
    .parameter "tag"

    .prologue
    .line 196
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getBytes(II)[B
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 203
    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getCount(I)I
    .registers 5
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v1, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p1, v1, :cond_b

    move v1, v2

    .line 489
    :goto_a
    return v1

    .line 485
    :cond_b
    iget-object v1, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 486
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_15

    move v1, v2

    .line 487
    goto :goto_a

    .line 489
    :cond_15
    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_20

    check-cast v0, Ljava/util/Vector;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_a

    .restart local v0       #o:Ljava/lang/Object;
    :cond_20
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getDataSize()I
    .registers 5

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, size:I
    const/4 v2, 0x0

    .local v2, tag:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/io/protocol/ProtoBuf;->maxTag()I

    move-result v3

    if-gt v2, v3, :cond_1a

    .line 525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    invoke-virtual {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 526
    invoke-direct {p0, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 524
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 529
    .end local v0           #i:I
    :cond_1a
    return v1
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "tag"

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(II)D
    .registers 5
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "tag"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFloat(II)F
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter "tag"

    .prologue
    .line 210
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInt(II)I
    .registers 5
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 217
    const/16 v0, 0x15

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "tag"

    .prologue
    .line 225
    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(II)J
    .registers 5
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 232
    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "tag"

    .prologue
    .line 267
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 275
    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "tag"

    .prologue
    .line 283
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 291
    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getType(I)I
    .registers 7
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    .line 500
    const/16 v1, 0x10

    .line 501
    .local v1, tagType:I
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v2, :cond_f

    .line 502
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v1

    .line 505
    :cond_f
    if-ne v1, v3, :cond_1f

    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge p1, v2, :cond_1f

    .line 506
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 509
    :cond_1f
    if-ne v1, v3, :cond_34

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-lez v2, :cond_34

    .line 510
    invoke-direct {p0, p1, v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, o:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_33

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_35

    :cond_33
    move v1, v4

    .line 516
    .end local v0           #o:Ljava/lang/Object;
    :cond_34
    :goto_34
    return v1

    .line 512
    .restart local v0       #o:Ljava/lang/Object;
    :cond_35
    const/4 v2, 0x2

    move v1, v2

    goto :goto_34
.end method

.method public getType()Lcom/google/common/io/protocol/ProtoBufType;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public has(I)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public insertBool(IIZ)V
    .registers 5
    .parameter "tag"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 777
    if-eqz p3, :cond_8

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 778
    return-void

    .line 777
    :cond_8
    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public insertBytes(II[B)V
    .registers 4
    .parameter "tag"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 784
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 785
    return-void
.end method

.method public insertDouble(IID)V
    .registers 7
    .parameter "tag"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 813
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    .line 814
    return-void
.end method

.method public insertFloat(IIF)V
    .registers 5
    .parameter "tag"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 806
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->insertInt(III)V

    .line 807
    return-void
.end method

.method public insertInt(III)V
    .registers 6
    .parameter "tag"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 791
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    .line 792
    return-void
.end method

.method public insertLong(IIJ)V
    .registers 7
    .parameter "tag"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 798
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_17

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gez v0, :cond_17

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    long-to-int v1, p3

    aget-object v0, v0, v1

    :goto_13
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 800
    return-void

    .line 798
    :cond_17
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    goto :goto_13
.end method

.method public insertProtoBuf(IILcom/google/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter "tag"
    .parameter "index"
    .parameter "pb"

    .prologue
    .line 820
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 821
    return-void
.end method

.method public insertString(IILjava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 827
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 828
    return-void
.end method

.method public maxTag()I
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public newProtoBufForTag(I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "tag"

    .prologue
    .line 166
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    iget-object v1, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, p0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .registers 16
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v8, 0x0

    .local v8, tag:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/io/protocol/ProtoBuf;->maxTag()I

    move-result v12

    if-gt v8, v12, :cond_af

    .line 595
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    .line 596
    .local v7, size:I
    invoke-direct {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v11

    .line 599
    .local v11, wireType:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_10
    if-ge v4, v7, :cond_ab

    .line 600
    shl-int/lit8 v12, v8, 0x3

    or-int/2addr v12, v11

    int-to-long v12, v12

    invoke-static {p1, v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 602
    packed-switch v11, :pswitch_data_b0

    .line 646
    :pswitch_1c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 605
    :pswitch_22
    const/16 v12, 0x13

    invoke-direct {p0, v8, v4, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 607
    .local v9, v:J
    const/4 v12, 0x5

    if-ne v11, v12, :cond_43

    const/4 v12, 0x4

    move v2, v12

    .line 608
    .local v2, cnt:I
    :goto_33
    const/4 v1, 0x0

    .local v1, b:I
    :goto_34
    if-ge v1, v2, :cond_60

    .line 609
    const-wide/16 v12, 0xff

    and-long/2addr v12, v9

    long-to-int v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 610
    const/16 v12, 0x8

    shr-long/2addr v9, v12

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 607
    .end local v1           #b:I
    .end local v2           #cnt:I
    :cond_43
    const/16 v12, 0x8

    move v2, v12

    goto :goto_33

    .line 615
    .end local v9           #v:J
    :pswitch_47
    const/16 v12, 0x13

    invoke-direct {p0, v8, v4, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 616
    .restart local v9       #v:J
    invoke-direct {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v12

    if-eqz v12, :cond_5d

    .line 617
    invoke-static {v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v9

    .line 619
    :cond_5d
    invoke-static {p1, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 599
    .end local v9           #v:J
    :cond_60
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 623
    :pswitch_63
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v12

    const/16 v13, 0x1b

    if-ne v12, v13, :cond_84

    const/16 v12, 0x10

    :goto_6d
    invoke-direct {p0, v8, v4, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v6

    .line 628
    .local v6, o:Ljava/lang/Object;
    instance-of v12, v6, [B

    if-eqz v12, :cond_87

    .line 629
    check-cast v6, [B

    .end local v6           #o:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 630
    .local v3, data:[B
    array-length v12, v3

    int-to-long v12, v12

    invoke-static {p1, v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 631
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_60

    .line 623
    .end local v3           #data:[B
    :cond_84
    const/16 v12, 0x19

    goto :goto_6d

    .line 633
    .restart local v6       #o:Ljava/lang/Object;
    :cond_87
    move-object v0, v6

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    move-object v5, v0

    .line 634
    .local v5, msg:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v5}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v12

    int-to-long v12, v12

    invoke-static {p1, v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 635
    invoke-virtual {v5, p1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    goto :goto_60

    .line 640
    .end local v5           #msg:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v6           #o:Ljava/lang/Object;
    :pswitch_97
    const/16 v12, 0x1a

    invoke-direct {p0, v8, v4, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 642
    shl-int/lit8 v12, v8, 0x3

    or-int/lit8 v12, v12, 0x4

    int-to-long v12, v12

    invoke-static {p1, v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    goto :goto_60

    .line 594
    :cond_ab
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 650
    .end local v4           #i:I
    .end local v7           #size:I
    .end local v11           #wireType:I
    :cond_af
    return-void

    .line 602
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_47
        :pswitch_22
        :pswitch_63
        :pswitch_97
        :pswitch_1c
        :pswitch_22
    .end packed-switch
.end method

.method public parse(Ljava/io/InputStream;I)I
    .registers 27
    .parameter "is"
    .parameter "available"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/io/protocol/ProtoBuf;->clear()V

    .line 367
    :goto_3
    if-lez p2, :cond_15

    .line 368
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v14

    .line 370
    .local v14, tagAndType:J
    const-wide/16 v21, -0x1

    cmp-long v21, v14, v21

    if-nez v21, :cond_1d

    .line 453
    .end local v14           #tagAndType:J
    :cond_15
    if-gez p2, :cond_1e2

    .line 454
    new-instance v21, Ljava/io/IOException;

    invoke-direct/range {v21 .. v21}, Ljava/io/IOException;-><init>()V

    throw v21

    .line 373
    .restart local v14       #tagAndType:J
    :cond_1d
    invoke-static {v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v21

    sub-int p2, p2, v21

    .line 374
    move-wide v0, v14

    long-to-int v0, v0

    move/from16 v21, v0

    and-int/lit8 v20, v21, 0x7

    .line 375
    .local v20, wireType:I
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    .line 378
    const/16 v21, 0x3

    ushr-long v21, v14, v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move v13, v0

    .line 379
    .local v13, tag:I
    :goto_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    move/from16 v0, v21

    move v1, v13

    if-gt v0, v1, :cond_54

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_39

    .line 382
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    move-object/from16 v21, v0

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v13

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 386
    packed-switch v20, :pswitch_data_1e4

    .line 448
    :pswitch_6a
    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unsupp.Type"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 388
    :pswitch_87
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v17

    .line 389
    .local v17, v:J
    invoke-static/range {v17 .. v18}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v21

    sub-int p2, p2, v21

    .line 390
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v21

    if-eqz v21, :cond_a4

    .line 391
    invoke-static/range {v17 .. v18}, Lcom/google/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v17

    .line 393
    :cond_a4
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-ltz v21, :cond_d8

    sget-object v21, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v21, v17, v21

    if-gez v21, :cond_d8

    sget-object v21, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v19, v21

    .line 450
    .end local v17           #v:J
    :goto_c5
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v21

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    goto/16 :goto_3

    .line 393
    .restart local v17       #v:J
    :cond_d8
    new-instance v21, Ljava/lang/Long;

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v19, v21

    goto :goto_c5

    .line 400
    .end local v17           #v:J
    :pswitch_e4
    const-wide/16 v17, 0x0

    .line 401
    .restart local v17       #v:J
    const/4 v12, 0x0

    .line 402
    .local v12, shift:I
    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10c

    const/16 v21, 0x4

    move/from16 v4, v21

    .line 403
    .local v4, count:I
    :goto_f3
    sub-int p2, p2, v4

    move v5, v4

    .line 405
    .end local v4           #count:I
    .local v5, count:I
    :goto_f6
    const/16 v21, 0x1

    sub-int v4, v5, v21

    .end local v5           #count:I
    .restart local v4       #count:I
    if-lez v5, :cond_111

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide v8, v0

    .line 407
    .local v8, l:J
    shl-long v21, v8, v12

    or-long v17, v17, v21

    .line 408
    add-int/lit8 v12, v12, 0x8

    move v5, v4

    .line 409
    .end local v4           #count:I
    .restart local v5       #count:I
    goto :goto_f6

    .line 402
    .end local v5           #count:I
    .end local v8           #l:J
    :cond_10c
    const/16 v21, 0x8

    move/from16 v4, v21

    goto :goto_f3

    .line 411
    .restart local v4       #count:I
    :cond_111
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-ltz v21, :cond_133

    sget-object v21, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v21, v17, v21

    if-gez v21, :cond_133

    sget-object v21, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v19, v21

    .line 414
    .local v19, value:Ljava/lang/Long;
    :goto_132
    goto :goto_c5

    .line 411
    .end local v19           #value:Ljava/lang/Long;
    :cond_133
    new-instance v21, Ljava/lang/Long;

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v19, v21

    goto :goto_132

    .line 417
    .end local v4           #count:I
    .end local v12           #shift:I
    .end local v17           #v:J
    :pswitch_13f
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v16, v0

    .line 418
    .local v16, total:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v21

    sub-int p2, p2, v21

    .line 419
    sub-int p2, p2, v16

    .line 421
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v21

    const/16 v22, 0x1b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18a

    .line 422
    new-instance v10, Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v10, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 423
    .local v10, msg:Lcom/google/common/io/protocol/ProtoBuf;
    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 424
    move-object/from16 v19, v10

    .line 425
    .local v19, value:Lcom/google/common/io/protocol/ProtoBuf;
    goto/16 :goto_c5

    .line 426
    .end local v10           #msg:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v19           #value:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_18a
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v6, v0

    .line 427
    .local v6, data:[B
    const/4 v11, 0x0

    .line 428
    .local v11, pos:I
    :goto_190
    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_1ad

    .line 429
    sub-int v21, v16, v11

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v11

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 430
    .restart local v4       #count:I
    if-gtz v4, :cond_1ab

    .line 431
    new-instance v21, Ljava/io/IOException;

    const-string v22, "Unexp.EOF"

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 433
    :cond_1ab
    add-int/2addr v11, v4

    goto :goto_190

    .line 435
    .end local v4           #count:I
    :cond_1ad
    move-object/from16 v19, v6

    .line 437
    .local v19, value:[B
    goto/16 :goto_c5

    .line 440
    .end local v6           #data:[B
    .end local v11           #pos:I
    .end local v16           #total:I
    .end local v19           #value:[B
    :pswitch_1b1
    new-instance v7, Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v0

    if-nez v21, :cond_1d0

    const/16 v21, 0x0

    :goto_1bd
    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 443
    .local v7, group:Lcom/google/common/io/protocol/ProtoBuf;
    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move-result p2

    .line 444
    move-object/from16 v19, v7

    .line 445
    .local v19, value:Lcom/google/common/io/protocol/ProtoBuf;
    goto/16 :goto_c5

    .line 440
    .end local v7           #group:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v19           #value:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v4

    goto :goto_1bd

    .line 457
    .end local v13           #tag:I
    .end local v14           #tagAndType:J
    .end local v20           #wireType:I
    :cond_1e2
    return p2

    .line 386
    nop

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_87
        :pswitch_e4
        :pswitch_13f
        :pswitch_1b1
        :pswitch_6a
        :pswitch_e4
    .end packed-switch
.end method

.method public parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 350
    return-object p0
.end method

.method public parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 335
    return-object p0
.end method

.method public remove(II)V
    .registers 7
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 465
    .local v0, count:I
    if-lt p2, v0, :cond_c

    .line 466
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 468
    :cond_c
    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 469
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 474
    :goto_15
    return-void

    .line 471
    :cond_16
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 472
    .local v1, v:Ljava/util/Vector;
    invoke-virtual {v1, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_15
.end method

.method public setBool(IZ)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 708
    if-eqz p2, :cond_8

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 709
    return-void

    .line 708
    :cond_8
    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public setBytes(I[B)V
    .registers 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 715
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 716
    return-void
.end method

.method public setDouble(ID)V
    .registers 6
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 737
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 738
    return-void
.end method

.method public setFloat(IF)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 744
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 745
    return-void
.end method

.method public setInt(II)V
    .registers 5
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 722
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 723
    return-void
.end method

.method public setLong(IJ)V
    .registers 6
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 729
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_17

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_17

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    long-to-int v1, p2

    aget-object v0, v0, v1

    :goto_13
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 731
    return-void

    .line 729
    :cond_17
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_13
.end method

.method public setNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "tag"

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->newProtoBufForTag(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 762
    .local v0, child:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 763
    return-object v0
.end method

.method public setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter "tag"
    .parameter "pb"

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 752
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 770
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 771
    return-void
.end method

.method setType(Lcom/google/common/io/protocol/ProtoBufType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eq p1, v0, :cond_18

    .line 310
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 312
    :cond_18
    iput-object p1, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    .line 313
    return-void
.end method

.method public toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 693
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 694
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
