.class public Lcom/google/common/io/protocol/ProtoBufType;
.super Ljava/lang/Object;
.source "ProtoBufType.java"


# static fields
.field public static final MASK_MODIFIER:I = 0xff00

.field public static final MASK_TYPE:I = 0xff

.field public static final OPTIONAL:I = 0x200

.field public static final REPEATED:I = 0x400

.field public static final REQUIRED:I = 0x100

.field public static final TYPE_BOOL:I = 0x18

.field public static final TYPE_BYTES:I = 0x23

.field public static final TYPE_DATA:I = 0x19

.field public static final TYPE_DOUBLE:I = 0x11

.field public static final TYPE_ENUM:I = 0x1e

.field public static final TYPE_FIXED32:I = 0x17

.field public static final TYPE_FIXED64:I = 0x16

.field public static final TYPE_FLOAT:I = 0x12

.field public static final TYPE_GROUP:I = 0x1a

.field public static final TYPE_INT32:I = 0x15

.field public static final TYPE_INT64:I = 0x13

.field public static final TYPE_MESSAGE:I = 0x1b

.field public static final TYPE_SFIXED32:I = 0x1f

.field public static final TYPE_SFIXED64:I = 0x20

.field public static final TYPE_SINT32:I = 0x21

.field public static final TYPE_SINT64:I = 0x22

.field public static final TYPE_STRING:I = 0x24

.field public static final TYPE_TEXT:I = 0x1c

.field public static final TYPE_UINT32:I = 0x1d

.field public static final TYPE_UINT64:I = 0x14

.field public static final TYPE_UNDEFINED:I = 0x10


# instance fields
.field private final data:Ljava/util/Vector;

.field private final typeName:Ljava/lang/String;

.field private final types:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "typeName"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    .line 61
    iput-object p1, p0, Lcom/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static stringEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 168
    :goto_5
    return v2

    .line 158
    :cond_6
    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 159
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_21

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 162
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    if-ge v0, v1, :cond_33

    .line 163
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_30

    move v2, v4

    goto :goto_5

    .line 162
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    move v2, v5

    .line 165
    goto :goto_5

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_35
    move v2, v4

    .line 168
    goto :goto_5
.end method


# virtual methods
.method public addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;
    .registers 6
    .parameter "optionsAndType"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 77
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt v0, p2, :cond_16

    .line 78
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_16
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, p2, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 82
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 84
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 129
    if-nez p1, :cond_5

    move v2, v4

    .line 141
    :goto_4
    return v2

    .line 132
    :cond_5
    if-ne p0, p1, :cond_9

    .line 134
    const/4 v2, 0x1

    goto :goto_4

    .line 135
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v2, v4

    .line 137
    goto :goto_4

    .line 139
    :cond_15
    move-object v0, p1

    check-cast v0, Lcom/google/common/io/protocol/ProtoBufType;

    move-object v1, v0

    .line 141
    .local v1, other:Lcom/google/common/io/protocol/ProtoBufType;
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-static {v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->stringEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_4
.end method

.method public getData(I)Ljava/lang/Object;
    .registers 3
    .parameter "tag"

    .prologue
    .line 114
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public getModifiers(I)I
    .registers 4
    .parameter "tag"

    .prologue
    .line 103
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt p1, v0, :cond_d

    :cond_a
    const/16 v0, 0x600

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    goto :goto_c
.end method

.method public getType(I)I
    .registers 3
    .parameter "tag"

    .prologue
    .line 92
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt p1, v0, :cond_d

    :cond_a
    const/16 v0, 0x10

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_c
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_b

    .line 149
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 151
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    return-object v0
.end method
