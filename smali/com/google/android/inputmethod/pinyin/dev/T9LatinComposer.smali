.class public Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;
.super Ljava/lang/Object;
.source "T9LatinComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$1;,
        Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;
    }
.end annotation


# instance fields
.field private mCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCapitalManager:Lcom/google/android/inputmethod/pinyin/CapitalManager;

.field private mEdited:Ljava/lang/String;

.field private mFixed:Ljava/lang/String;

.field private mLength:I

.field private mMaxLength:I

.field private mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9DictionaryMixer;

.field private mModified:Z

.field private mRemaining:Ljava/lang/StringBuilder;

.field private mSegments:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

.field private mUnknown:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/T9DictionaryMixer;Lcom/google/android/inputmethod/pinyin/CapitalManager;I)V
    .registers 5
    .parameter "mixer"
    .parameter "manager"
    .parameter "maxLength"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mLength:I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mSegments:Ljava/util/LinkedList;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    .line 38
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9DictionaryMixer;

    .line 39
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/CapitalManager;

    .line 40
    iput p3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mMaxLength:I

    .line 41
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/CapitalManager;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/CapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    .line 42
    return-void
.end method

.method private fetchCandidates()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9DictionaryMixer;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9DictionaryMixer;->getSuggestions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCandidates:Ljava/util/List;

    .line 109
    return-void
.end method

.method private fetchComposingComponentsLazily()V
    .registers 13

    .prologue
    const/4 v10, 0x0

    const-string v11, ""

    .line 130
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/CapitalManager;

    invoke-interface {v8}, Lcom/google/android/inputmethod/pinyin/CapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v6

    .line 131
    .local v6, newState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    if-eq v6, v8, :cond_12

    .line 132
    iput-object v6, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    .line 133
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    .line 135
    :cond_12
    iget-boolean v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    if-nez v8, :cond_17

    .line 196
    :goto_16
    return-void

    .line 139
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v3, fixed:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mSegments:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;

    .line 141
    .local v7, s:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;
    iget-object v8, v7, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;->result:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 144
    .end local v7           #s:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;
    :cond_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_af

    .line 145
    sget-object v8, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v9}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_100

    .line 161
    :goto_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, edited:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->fetchCandidates()V

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, editedLength:I
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCandidates:Ljava/util/List;

    if-eqz v8, :cond_b4

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCandidates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_b4

    .line 165
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCandidates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, firstCandidate:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_b4

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v1, v8, :cond_b4

    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-eq v8, v9, :cond_88

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 168
    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 147
    .end local v0           #edited:Ljava/lang/StringBuilder;
    .end local v1           #editedLength:I
    .end local v2           #firstCandidate:Ljava/lang/String;
    .end local v4           #i:I
    :pswitch_8b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mFixed:Ljava/lang/String;

    goto :goto_47

    .line 150
    :pswitch_92
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v3, v10, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mFixed:Ljava/lang/String;

    goto :goto_47

    .line 154
    :pswitch_a4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mFixed:Ljava/lang/String;

    goto :goto_47

    .line 158
    :cond_af
    const-string v8, ""

    iput-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mFixed:Ljava/lang/String;

    goto :goto_47

    .line 176
    .restart local v0       #edited:Ljava/lang/StringBuilder;
    .restart local v1       #editedLength:I
    :cond_b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_fb

    .line 177
    sget-object v8, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v9}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_10a

    .line 195
    :goto_c7
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mUnknown:Ljava/lang/String;

    goto/16 :goto_16

    .line 179
    :pswitch_d1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mEdited:Ljava/lang/String;

    goto :goto_c7

    .line 182
    :pswitch_d8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_e9

    .line 183
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 185
    :cond_e9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mEdited:Ljava/lang/String;

    goto :goto_c7

    .line 188
    :pswitch_f0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mEdited:Ljava/lang/String;

    goto :goto_c7

    .line 192
    :cond_fb
    const-string v8, ""

    iput-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mEdited:Ljava/lang/String;

    goto :goto_c7

    .line 145
    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_92
        :pswitch_a4
        :pswitch_8b
    .end packed-switch

    .line 177
    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_f0
        :pswitch_d1
    .end packed-switch
.end method


# virtual methods
.method public addKey(C)Z
    .registers 5
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    .line 52
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mMaxLength:I

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mLength:I

    if-ne v0, v1, :cond_9

    .line 53
    const/4 v0, 0x0

    .line 58
    :goto_8
    return v0

    .line 55
    :cond_9
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    .line 56
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mLength:I

    move v0, v2

    .line 58
    goto :goto_8
.end method

.method public backspace()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mSegments:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 69
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mSegments:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;

    .line 70
    .local v0, s:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;->source:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    move v1, v3

    .line 81
    .end local v0           #s:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;
    :goto_1c
    return v1

    .line 74
    :cond_1d
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3a

    .line 75
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mLength:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mLength:I

    .line 77
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    move v1, v3

    .line 78
    goto :goto_1c

    :cond_3a
    move v1, v4

    .line 81
    goto :goto_1c
.end method

.method public chooseCandidate(Ljava/lang/String;)Z
    .registers 9
    .parameter "candidate"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, length:I
    iput-boolean v6, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_19

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_16

    .line 253
    add-int/lit8 v1, v1, 0x1

    .line 251
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 256
    :cond_19
    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;-><init>(Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$1;)V

    .line 259
    .local v2, segment:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v1, v3, :cond_2d

    .line 260
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 262
    :cond_2d
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;->source:Ljava/lang/String;

    .line 263
    iput-object p1, v2, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$ComposingSegment;->result:Ljava/lang/String;

    .line 264
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 265
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mSegments:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_58

    .line 267
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9DictionaryMixer;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getComposingText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/T9DictionaryMixer;->addNewWord(Ljava/lang/String;)V

    move v3, v6

    .line 270
    :goto_57
    return v3

    :cond_58
    move v3, v5

    goto :goto_57
.end method

.method public getCandidates()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/CapitalManager;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/CapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v0

    .line 118
    .local v0, newState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    if-eq v0, v1, :cond_f

    .line 119
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    .line 122
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    if-eqz v1, :cond_19

    .line 123
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->fetchComposingComponentsLazily()V

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    .line 126
    :cond_19
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCandidates:Ljava/util/List;

    return-object v1
.end method

.method public getComposingText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->fetchComposingComponentsLazily()V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mFixed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditedComposingText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->fetchComposingComponentsLazily()V

    .line 221
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mEdited:Ljava/lang/String;

    return-object v0
.end method

.method public getFixedComposingText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->fetchComposingComponentsLazily()V

    .line 211
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mFixed:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyCaptions()[C
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_35

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, needCapital:Z
    sget-object v1, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/CapitalManager;

    invoke-interface {v2}, Lcom/google/android/inputmethod/pinyin/CapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 101
    :goto_1b
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;->getKeyCaptions(CZ)[C

    move-result-object v1

    .line 103
    .end local v0           #needCapital:Z
    :goto_25
    return-object v1

    .line 95
    .restart local v0       #needCapital:Z
    :pswitch_26
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mSegments:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_31

    const/4 v1, 0x1

    move v0, v1

    .line 96
    :goto_30
    goto :goto_1b

    :cond_31
    move v0, v3

    .line 95
    goto :goto_30

    .line 98
    :pswitch_33
    const/4 v0, 0x1

    goto :goto_1b

    .line 103
    .end local v0           #needCapital:Z
    :cond_35
    const/4 v1, 0x0

    goto :goto_25

    .line 93
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_26
        :pswitch_33
    .end packed-switch
.end method

.method public getUnknownComposingText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->fetchComposingComponentsLazily()V

    .line 231
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mUnknown:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 277
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mLength:I

    .line 278
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mRemaining:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mSegments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mModified:Z

    .line 281
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->mLength:I

    return v0
.end method
