.class public Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;
.super Ljava/lang/Object;
.source "PinyinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/PinyinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodingInfo"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_PAGE_SIZE_DISPLAY:I = 0xa

.field private static final PY_STRING_MAX:I = 0x1c


# instance fields
.field private mActiveCmpsDisplayLen:I

.field private mActiveCmpsLen:I

.field private mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field public mCandidatesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCnToPage:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mComposingStr:Ljava/lang/String;

.field private mComposingStrDisplay:Ljava/lang/String;

.field private mCorrection:Ljava/lang/String;

.field private mCursorPos:I

.field private mFinishSelection:Z

.field private mFixedLen:I

.field private mFullSent:Ljava/lang/String;

.field private mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

.field public mIsPosInSpl:Z

.field public mLatinIMEPredicts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPageStart:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPosDelSpl:I

.field private mPyBuf:[B

.field private mSplStart:[I

.field private mSurface:Ljava/lang/StringBuffer;

.field private mSurfaceDecodedLen:I

.field public mTotalChoicesNum:I

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2283
    const-class v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V
    .registers 3
    .parameter

    .prologue
    .line 2412
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2377
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    .line 2382
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    .line 2387
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCnToPage:Ljava/util/Vector;

    .line 2396
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPosDelSpl:I

    .line 2408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCorrection:Ljava/lang/String;

    .line 2413
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    .line 2414
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    .line 2415
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/IDecoder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2283
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2283
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->chooseDecodingCandidate(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2283
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->choosePredictChoice(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2283
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->prepareAppCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)[Landroid/view/inputmethod/CompletionInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-object v0
.end method

.method private chooseDecodingCandidate(I)V
    .registers 8
    .parameter "candId"

    .prologue
    .line 2562
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v3

    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v3, v4, :cond_1a

    .line 2563
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->resetCandidates()V

    .line 2564
    const/4 v2, 0x0

    .line 2566
    .local v2, totalChoicesNum:I
    if-gez p1, :cond_6e

    .line 2567
    :try_start_10
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->length()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_6c

    move-result v3

    if-nez v3, :cond_1b

    .line 2568
    const/4 v2, 0x0

    .line 2596
    :goto_17
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->updateDecInfoForSearch(I)V

    .line 2598
    .end local v2           #totalChoicesNum:I
    :cond_1a
    return-void

    .line 2570
    .restart local v2       #totalChoicesNum:I
    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPyBuf:[B

    if-nez v3, :cond_25

    .line 2571
    const/16 v3, 0x1c

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPyBuf:[B

    .line 2572
    :cond_25
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->length()I

    move-result v3

    if-ge v1, v3, :cond_38

    .line 2573
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPyBuf:[B

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 2572
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2574
    :cond_38
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPyBuf:[B

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->length()I

    move-result v4

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 2576
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPosDelSpl:I

    if-gez v3, :cond_52

    .line 2577
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPyBuf:[B

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->length()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imSearch([BI)I

    move-result v2

    goto :goto_17

    .line 2580
    :cond_52
    const/4 v0, 0x1

    .line 2581
    .local v0, clearFixedThisStep:Z
    sget-object v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v4

    if-ne v3, v4, :cond_5e

    .line 2582
    const/4 v0, 0x0

    .line 2584
    :cond_5e
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPosDelSpl:I

    iget-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIsPosInSpl:Z

    invoke-interface {v3, v4, v5, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imDelSearch(IZZ)I

    move-result v2

    .line 2587
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPosDelSpl:I

    goto :goto_17

    .line 2594
    .end local v0           #clearFixedThisStep:Z
    .end local v1           #i:I
    :catch_6c
    move-exception v3

    goto :goto_17

    .line 2591
    :cond_6e
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v3, p1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imChoose(I)I
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_73} :catch_6c

    move-result v2

    goto :goto_17
.end method

.method private choosePredictChoice(I)V
    .registers 8
    .parameter "choiceId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2692
    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v2

    if-ne v1, v2, :cond_12

    if-ltz p1, :cond_12

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    if-lt p1, v1, :cond_13

    .line 2712
    :cond_12
    :goto_12
    return-void

    .line 2697
    :cond_13
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2699
    .local v0, tmp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->resetCandidates()V

    .line 2701
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2702
    iput v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    .line 2704
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v4, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2705
    iput v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 2706
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    .line 2707
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    .line 2708
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    .line 2709
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsLen:I

    .line 2711
    iput-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFinishSelection:Z

    goto :goto_12
.end method

.method private getCandidatesForCache()V
    .registers 14

    .prologue
    const/16 v12, 0xa

    .line 2724
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 2725
    .local v4, fetchStart:I
    iget v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    sub-int v3, v10, v4

    .line 2727
    .local v3, fetchSize:I
    const/4 v5, 0x0

    .line 2728
    .local v5, fetched:I
    if-le v3, v12, :cond_11

    .line 2729
    const/16 v3, 0xa

    .line 2742
    :cond_11
    :goto_11
    if-ge v5, v12, :cond_d5

    if-lez v3, :cond_d5

    .line 2743
    const/4 v6, 0x0

    .line 2744
    .local v6, newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_16
    sget-object v10, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v11}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v11

    if-eq v10, v11, :cond_34

    sget-object v10, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v11}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v11

    if-eq v10, v11, :cond_34

    sget-object v10, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v11}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v11

    if-ne v10, v11, :cond_61

    .line 2747
    :cond_34
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    iget v11, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    invoke-interface {v10, v4, v3, v11}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetChoiceList(III)Ljava/util/List;

    move-result-object v6

    .line 2774
    :cond_3c
    :goto_3c
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v10}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->isTraditionalEnabled()Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 2775
    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->convertScList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 2776
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v5, v10

    .line 2779
    :cond_4d
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2781
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 2782
    iget v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    sub-int v3, v10, v4

    .line 2783
    if-le v3, v12, :cond_11

    .line 2784
    const/16 v3, 0xa

    goto :goto_11

    .line 2749
    :cond_61
    sget-object v10, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v11}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v11

    if-ne v10, v11, :cond_72

    .line 2750
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v10, v4, v3}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPredictList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_3c

    .line 2752
    :cond_72
    sget-object v10, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v11}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v11

    if-ne v10, v11, :cond_a2

    .line 2753
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_81} :catch_cc

    .line 2754
    .end local v6           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v7, newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_81
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v10, :cond_da

    .line 2755
    add-int v2, v4, v3

    .line 2756
    .local v2, fetchEnd:I
    move v8, v4

    .local v8, pos:I
    :goto_88
    if-ge v8, v2, :cond_a0

    .line 2757
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v10, v8

    .line 2758
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_9d

    .line 2759
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 2760
    .local v9, s:Ljava/lang/CharSequence;
    if-eqz v9, :cond_9d

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_9d} :catch_d6

    .line 2756
    .end local v9           #s:Ljava/lang/CharSequence;
    :cond_9d
    add-int/lit8 v8, v8, 0x1

    goto :goto_88

    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_a0
    move-object v6, v7

    .line 2763
    .end local v7           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3c

    .line 2764
    .end local v2           #fetchEnd:I
    .end local v8           #pos:I
    :cond_a2
    :try_start_a2
    sget-object v10, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v11}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v11

    if-ne v10, v11, :cond_3c

    .line 2765
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_b1} :catch_cc

    .line 2766
    .end local v6           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_b1
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mLatinIMEPredicts:Ljava/util/List;

    if-eqz v10, :cond_da

    .line 2767
    add-int v2, v4, v3

    .line 2768
    .restart local v2       #fetchEnd:I
    move v8, v4

    .restart local v8       #pos:I
    :goto_b8
    if-ge v8, v2, :cond_da

    .line 2769
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mLatinIMEPredicts:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_c9} :catch_d6

    .line 2768
    add-int/lit8 v8, v8, 0x1

    goto :goto_b8

    .line 2787
    .end local v2           #fetchEnd:I
    .end local v7           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #pos:I
    .restart local v6       #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_cc
    move-exception v10

    move-object v1, v10

    .line 2788
    .local v1, e:Landroid/os/RemoteException;
    :goto_ce
    const-string v10, "PinyinIME"

    const-string v11, "PinyinDecoderService died"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2790
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v6           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_d5
    return-void

    .line 2787
    .restart local v7       #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_d6
    move-exception v10

    move-object v1, v10

    move-object v6, v7

    .end local v7           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_ce

    .end local v6           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_da
    move-object v6, v7

    .end local v7           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_3c
.end method

.method private final isAlphabetOrDigit(Ljava/lang/CharSequence;I)Z
    .registers 5
    .parameter "s"
    .parameter "i"

    .prologue
    .line 3030
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3031
    .local v0, c:C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_c

    const/16 v1, 0x39

    if-le v0, v1, :cond_1c

    :cond_c
    const/16 v1, 0x61

    if-lt v0, v1, :cond_14

    const/16 v1, 0x7a

    if-le v0, v1, :cond_1c

    :cond_14
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1e

    .line 3032
    :cond_1c
    const/4 v1, 0x1

    .line 3034
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private final isCJK(Ljava/lang/CharSequence;I)Z
    .registers 6
    .parameter "s"
    .parameter "i"

    .prologue
    .line 3037
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3038
    .local v0, chars:[C
    invoke-static {v0, p2}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 3039
    .local v1, codepoint:I
    const v2, 0xfa29

    if-gt v1, v2, :cond_17

    const/16 v2, 0x2e81

    if-lt v1, v2, :cond_17

    .line 3040
    const/4 v2, 0x1

    .line 3042
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private final isPunctuation(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 3046
    const/16 v0, 0x2c

    if-eq p1, v0, :cond_35

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_35

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_35

    const/16 v0, 0x21

    if-eq p1, v0, :cond_35

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_35

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_35

    const v0, 0xff0c

    if-eq p1, v0, :cond_35

    const/16 v0, 0x3002

    if-eq p1, v0, :cond_35

    const v0, 0xff1f

    if-eq p1, v0, :cond_35

    const v0, 0xff01

    if-eq p1, v0, :cond_35

    const v0, 0xff1a

    if-eq p1, v0, :cond_35

    const v0, 0xff1b

    if-ne p1, v0, :cond_37

    :cond_35
    const/4 v0, 0x1

    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method private prepareAppCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 4
    .parameter "completions"

    .prologue
    const/4 v1, 0x0

    .line 2908
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->resetCandidates()V

    .line 2909
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2910
    array-length v0, p1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    .line 2911
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->preparePage(I)Z

    .line 2912
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFinishSelection:Z

    .line 2913
    return-void
.end method

.method private updateDecInfoForSearch(I)V
    .registers 12
    .parameter "totalChoicesNum"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2601
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    .line 2602
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    if-gez v3, :cond_b

    .line 2603
    iput v8, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    .line 2689
    :cond_a
    :goto_a
    return-void

    .line 2610
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v3}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetSplStart()[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    .line 2611
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPyStr(Z)Ljava/lang/String;

    move-result-object v2

    .line 2612
    .local v2, pyStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPyStrLen(Z)I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    .line 2613
    sget-boolean v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->$assertionsDisabled:Z

    if-nez v3, :cond_46

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_46

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_35} :catch_35
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_35} :catch_14b

    .line 2679
    .end local v2           #pyStr:Ljava/lang/String;
    :catch_35
    move-exception v3

    move-object v0, v3

    .line 2680
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PinyinIME"

    const-string v4, "PinyinDecoderService died"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2686
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_3e
    iget-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFinishSelection:Z

    if-nez v3, :cond_a

    .line 2687
    invoke-virtual {p0, v8}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->preparePage(I)Z

    goto :goto_a

    .line 2615
    .restart local v2       #pyStr:Ljava/lang/String;
    :cond_46
    :try_start_46
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetChoice(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    .line 2616
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->isTraditionalEnabled()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 2617
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->convertScToTc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    .line 2621
    :cond_67
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v3}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetFixedLen()I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    .line 2624
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2626
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v3, v4, :cond_8d

    .line 2627
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 2628
    :cond_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    .line 2631
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsLen:I

    .line 2632
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    if-lez v3, :cond_d1

    .line 2633
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsLen:I

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsLen:I

    .line 2638
    :cond_d1
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    if-nez v3, :cond_155

    .line 2639
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2640
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsDisplayLen:I

    .line 2657
    :cond_e1
    :goto_e1
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v3}, Lcom/google/android/inputmethod/pinyin/IDecoder;->getDecoderMode()I

    move-result v3

    if-ne v3, v9, :cond_13d

    .line 2658
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    const/16 v4, 0x41

    const/16 v5, 0x4e00

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2659
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    const/16 v4, 0x42

    const/16 v5, 0x4e28

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2660
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    const/16 v4, 0x43

    const/16 v5, 0x4e3f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2661
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    const/16 v4, 0x44

    const/16 v5, 0x4e36

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2662
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    const/16 v4, 0x46

    const/16 v5, 0x3f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2663
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    const/16 v4, 0x47

    const/16 v5, 0x2a

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2666
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    const/16 v4, 0x45

    const/16 v5, 0x4e59

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2674
    :cond_13d
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    array-length v3, v3

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_1e4

    .line 2675
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFinishSelection:Z
    :try_end_149
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_149} :catch_35
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_149} :catch_14b

    goto/16 :goto_3e

    .line 2681
    .end local v2           #pyStr:Ljava/lang/String;
    :catch_14b
    move-exception v3

    move-object v0, v3

    .line 2682
    .local v0, e:Ljava/lang/Exception;
    iput v8, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    .line 2683
    const-string v3, ""

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    goto/16 :goto_3e

    .line 2642
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #pyStr:Ljava/lang/String;
    :cond_155
    :try_start_155
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2643
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    add-int/lit8 v1, v3, 0x1

    .local v1, pos:I
    :goto_164
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    array-length v3, v3

    sub-int/2addr v3, v9

    if-ge v1, v3, :cond_1b3

    .line 2644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2646
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    if-ge v3, v4, :cond_1b0

    .line 2647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2643
    :cond_1b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_164

    .line 2650
    :cond_1b3
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsDisplayLen:I

    .line 2651
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v3, v4, :cond_e1

    .line 2652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    iget v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    goto/16 :goto_e1

    .line 2677
    .end local v1           #pos:I
    :cond_1e4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFinishSelection:Z
    :try_end_1e7
    .catch Landroid/os/RemoteException; {:try_start_155 .. :try_end_1e7} :catch_35
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1e7} :catch_14b

    goto/16 :goto_3e
.end method


# virtual methods
.method public addSplChar(CZ)V
    .registers 6
    .parameter "ch"
    .parameter "reset"

    .prologue
    const/4 v2, 0x0

    .line 2443
    if-eqz p2, :cond_17

    .line 2444
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2445
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    .line 2446
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 2448
    :try_start_12
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imResetSearch()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_25

    .line 2452
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2453
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 2454
    return-void

    .line 2449
    :catch_25
    move-exception v0

    goto :goto_17
.end method

.method public canDoPrediction()Z
    .registers 3

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public candidatesFromApp()Z
    .registers 3

    .prologue
    .line 2546
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public charAt(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public charBeforeCursorIsSeparator()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2941
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 2942
    .local v0, len:I
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    if-le v1, v0, :cond_e

    move v1, v3

    .line 2946
    :goto_d
    return v1

    .line 2943
    :cond_e
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    if-lez v1, :cond_21

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_21

    move v1, v4

    .line 2944
    goto :goto_d

    :cond_21
    move v1, v3

    .line 2946
    goto :goto_d
.end method

.method public convertScList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2796
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    move-result-object v1

    .line 2797
    .local v1, converter:Lcom/google/android/inputmethod/pinyin/ScTcConverter;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2798
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2799
    .local v3, item:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->convertScToTc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2800
    .local v0, cand:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2802
    .end local v0           #cand:Ljava/lang/String;
    .end local v3           #item:Ljava/lang/String;
    :cond_25
    return-object v4
.end method

.method public getActiveCmpsDisplayLen()I
    .registers 2

    .prologue
    .line 2518
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsDisplayLen:I

    return v0
.end method

.method public getActiveCmpsLen()I
    .registers 2

    .prologue
    .line 2510
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsLen:I

    return v0
.end method

.method public getCandidate(I)Ljava/lang/String;
    .registers 3
    .parameter "candId"

    .prologue
    .line 2717
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 2718
    :cond_a
    const/4 v0, 0x0

    .line 2720
    .end local p0
    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_b
.end method

.method public getComposingStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    return-object v0
.end method

.method public getComposingStrActivePart()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2505
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsLen:I

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2506
    :cond_14
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsLen:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComposingStrForDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCorrection:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFullSent(I)Ljava/lang/String;
    .registers 7
    .parameter "activeCandPos"

    .prologue
    .line 2527
    :try_start_0
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2528
    .local v1, retStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_24

    move-result-object v1

    move-object v2, v1

    .line 2531
    .end local v1           #retStr:Ljava/lang/String;
    :goto_23
    return-object v2

    .line 2530
    :catch_24
    move-exception v2

    move-object v0, v2

    .line 2531
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_23
.end method

.method public getCurrentPageSize(I)I
    .registers 4
    .parameter "currentPage"

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_c

    const/4 v0, 0x0

    .line 2918
    .end local p0
    :goto_b
    return v0

    .restart local p0
    :cond_c
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_b
.end method

.method public getCurrentPageStart(I)I
    .registers 4
    .parameter "currentPage"

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_d

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    .line 2924
    .end local p0
    :goto_c
    return v0

    .restart local p0
    :cond_d
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_c
.end method

.method public getCursorPos()I
    .registers 2

    .prologue
    .line 2950
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    return v0
.end method

.method public getCursorPosInCmps()I
    .registers 7

    .prologue
    .line 2954
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 2955
    .local v0, cursorPos:I
    const/4 v1, 0x0

    .line 2957
    .local v1, fixedLen:I
    const/4 v2, 0x0

    .local v2, hzPos:I
    :goto_4
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    if-ge v2, v3, :cond_25

    .line 2958
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    if-lt v3, v4, :cond_22

    .line 2959
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 2960
    add-int/lit8 v0, v0, 0x1

    .line 2957
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2963
    :cond_25
    return v0
.end method

.method public getCursorPosInCmpsDisplay()I
    .registers 5

    .prologue
    .line 2967
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCursorPosInCmps()I

    move-result v0

    .line 2971
    .local v0, cursorPos:I
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    add-int/lit8 v1, v2, 0x2

    .local v1, pos:I
    :goto_8
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_17

    .line 2972
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_18

    .line 2978
    :cond_17
    return v0

    .line 2975
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 2971
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public getFixedLen()I
    .registers 2

    .prologue
    .line 3026
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    return v0
.end method

.method public getFullSent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigianlSplStr()Ljava/lang/StringBuffer;
    .registers 2

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getSplNum()I
    .registers 3

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getSplStart()[I
    .registers 2

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    return-object v0
.end method

.method public getSplStrDecodedLen()I
    .registers 2

    .prologue
    .line 2493
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    return v0
.end method

.method public isCandidatesListEmpty()Z
    .registers 2

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSplStrFull()Z
    .registers 3

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    .line 2439
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public length()I
    .registers 2

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public moveCursor(I)V
    .registers 6
    .parameter "offset"

    .prologue
    .line 2992
    const/4 v1, 0x1

    if-gt p1, v1, :cond_6

    const/4 v1, -0x1

    if-ge p1, v1, :cond_7

    .line 3019
    :cond_6
    :goto_6
    return-void

    .line 2994
    :cond_7
    if-eqz p1, :cond_29

    .line 2995
    const/4 v0, 0x0

    .line 2996
    .local v0, hzPos:I
    const/4 v0, 0x0

    :goto_b
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    if-gt v0, v1, :cond_29

    .line 2997
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ne v1, v2, :cond_49

    .line 2998
    if-gez p1, :cond_36

    .line 2999
    if-lez v0, :cond_29

    .line 3000
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    sub-int p1, v1, v2

    .line 3013
    .end local v0           #hzPos:I
    :cond_29
    :goto_29
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 3014
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    if-gez v1, :cond_4c

    .line 3015
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    goto :goto_6

    .line 3004
    .restart local v0       #hzPos:I
    :cond_36
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    if-ge v0, v1, :cond_29

    .line 3005
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    sub-int p1, v1, v2

    goto :goto_29

    .line 2996
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3016
    .end local v0           #hzPos:I
    :cond_4c
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 3017
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    goto :goto_6
.end method

.method public moveCursorToEdge(Z)V
    .registers 3
    .parameter "left"

    .prologue
    .line 2982
    if-eqz p1, :cond_6

    .line 2983
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 2987
    :goto_5
    return-void

    .line 2985
    :cond_6
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    goto :goto_5
.end method

.method public onInputCycleEnd()V
    .registers 6

    .prologue
    .line 2876
    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v2

    if-ne v1, v2, :cond_5b

    .line 2878
    :try_start_a
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imOnInputCycleEnd()Z

    .line 2879
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imNeedTimeCostingOperation()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2880
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    iget-object v1, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2a

    .line 2881
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "UI background tasks"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 2885
    :cond_2a
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    iget-object v1, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 2886
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    iget-object v1, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2887
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    iget-object v3, v3, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1702(Lcom/google/android/inputmethod/pinyin/PinyinIME;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2888
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1700(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo$1;

    invoke-direct {v2, p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo$1;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_5b} :catch_5c

    .line 2905
    :cond_5b
    :goto_5b
    return-void

    .line 2901
    :catch_5c
    move-exception v1

    move-object v0, v1

    .line 2902
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5b
.end method

.method public pageBackwardable(I)Z
    .registers 3
    .parameter "currentPage"

    .prologue
    .line 2936
    if-lez p1, :cond_4

    const/4 v0, 0x1

    .line 2937
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public pageForwardable(I)Z
    .registers 5
    .parameter "currentPage"

    .prologue
    const/4 v2, 0x0

    .line 2928
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_d

    move v0, v2

    .line 2932
    :goto_c
    return v0

    .line 2929
    :cond_d
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    if-lt v0, v1, :cond_21

    move v0, v2

    .line 2930
    goto :goto_c

    .line 2932
    :cond_21
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public pageReady(I)Z
    .registers 5
    .parameter "pageNo"

    .prologue
    const/4 v2, 0x0

    .line 2807
    if-gez p1, :cond_5

    move v0, v2

    .line 2814
    :goto_4
    return v0

    .line 2810
    :cond_5
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_11

    move v0, v2

    .line 2811
    goto :goto_4

    .line 2814
    :cond_11
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public prepareDeleteBeforeCursor()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2461
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    if-lez v1, :cond_3b

    .line 2463
    const/4 v0, 0x0

    .local v0, pos:I
    :goto_6
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    if-ge v0, v1, :cond_2a

    .line 2464
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    if-lt v1, v2, :cond_3c

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    if-ge v1, v2, :cond_3c

    .line 2466
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPosDelSpl:I

    .line 2467
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSplStart:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 2468
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIsPosInSpl:Z

    .line 2472
    :cond_2a
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPosDelSpl:I

    if-gez v1, :cond_3b

    .line 2473
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPosDelSpl:I

    .line 2474
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 2475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIsPosInSpl:Z

    .line 2478
    .end local v0           #pos:I
    :cond_3b
    return-void

    .line 2463
    .restart local v0       #pos:I
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public prepareLatinPredicts(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3122
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->resetCandidates()V

    .line 3123
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1800(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Ljava/lang/String;

    move-result-object v2

    .line 3124
    .local v2, userInput:Ljava/lang/String;
    sget-object v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$3;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_9a

    .line 3133
    :goto_1f
    const/4 v0, 0x0

    .line 3134
    .local v0, correctionIndex:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_89

    .line 3135
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3136
    .local v1, firstSuggestion:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 3137
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mLatinIMEPredicts:Ljava/util/List;

    .line 3138
    const/4 v0, 0x0

    .line 3139
    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCorrection:Ljava/lang/String;

    .line 3154
    .end local v1           #firstSuggestion:Ljava/lang/String;
    :goto_3b
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1000(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->setCorrectionIndex(I)V

    .line 3155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    .line 3156
    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->preparePage(I)Z

    .line 3157
    iput-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFinishSelection:Z

    .line 3158
    return-void

    .line 3126
    .end local v0           #correctionIndex:I
    :pswitch_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3128
    goto :goto_1f

    .line 3130
    :pswitch_6f
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    .line 3141
    .restart local v0       #correctionIndex:I
    .restart local v1       #firstSuggestion:Ljava/lang/String;
    :cond_74
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mLatinIMEPredicts:Ljava/util/List;

    .line 3142
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mLatinIMEPredicts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3143
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mLatinIMEPredicts:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3144
    const/4 v0, 0x1

    .line 3145
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCorrection:Ljava/lang/String;

    goto :goto_3b

    .line 3148
    .end local v1           #firstSuggestion:Ljava/lang/String;
    :cond_89
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mLatinIMEPredicts:Ljava/util/List;

    .line 3149
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mLatinIMEPredicts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3150
    const/4 v0, 0x0

    .line 3151
    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCorrection:Ljava/lang/String;

    goto :goto_3b

    .line 3124
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_50
        :pswitch_6f
    .end packed-switch
.end method

.method public preparePage(I)Z
    .registers 6
    .parameter "pageNo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2819
    if-gez p1, :cond_6

    move v0, v2

    .line 2846
    :goto_5
    return v0

    .line 2822
    :cond_6
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_10

    move v0, v2

    .line 2823
    goto :goto_5

    .line 2827
    :cond_10
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_1c

    move v0, v3

    .line 2828
    goto :goto_5

    .line 2832
    :cond_1c
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_36

    move v0, v3

    .line 2833
    goto :goto_5

    .line 2837
    :cond_36
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCandidatesForCache()V

    .line 2841
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4f

    move v0, v2

    .line 2842
    goto :goto_5

    :cond_4f
    move v0, v3

    .line 2846
    goto :goto_5
.end method

.method public preparePredicts(Ljava/lang/CharSequence;)V
    .registers 7
    .parameter "history"

    .prologue
    const/4 v4, 0x0

    .line 2850
    if-nez p1, :cond_4

    .line 2873
    :goto_3
    return-void

    .line 2852
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->resetCandidates()V

    .line 2854
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1600(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2855
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2856
    .local v1, preEdit:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2857
    .local v2, predictNum:I
    if-eqz v1, :cond_32

    .line 2858
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->isTraditionalEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2859
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->convertTcToSc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2863
    :cond_2a
    :try_start_2a
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v3, v1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPredictsNum(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_38

    .line 2871
    .end local v1           #preEdit:Ljava/lang/String;
    .end local v2           #predictNum:I
    :cond_32
    invoke-virtual {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->preparePage(I)Z

    .line 2872
    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFinishSelection:Z

    goto :goto_3

    .line 2865
    .restart local v1       #preEdit:Ljava/lang/String;
    .restart local v2       #predictNum:I
    :catch_38
    move-exception v3

    move-object v0, v3

    .line 2866
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const-string v3, ""

    .line 2418
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2419
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mSurfaceDecodedLen:I

    .line 2420
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCursorPos:I

    .line 2421
    const-string v0, ""

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFullSent:Ljava/lang/String;

    .line 2422
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFixedLen:I

    .line 2423
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFinishSelection:Z

    .line 2424
    const-string v0, ""

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStr:Ljava/lang/String;

    .line 2425
    const-string v0, ""

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mComposingStrDisplay:Ljava/lang/String;

    .line 2426
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsLen:I

    .line 2427
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mActiveCmpsDisplayLen:I

    .line 2428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCorrection:Ljava/lang/String;

    .line 2430
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->resetCandidates()V

    .line 2431
    return-void
.end method

.method public resetCandidates()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2536
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    .line 2537
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    .line 2539
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2540
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2541
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCnToPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2542
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCnToPage:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2543
    return-void
.end method

.method public selectionFinished()Z
    .registers 2

    .prologue
    .line 2554
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mFinishSelection:Z

    return v0
.end method

.method public setFaultTolerance(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 3112
    :try_start_0
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v0, p1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imSetStrokeFaultTolerance(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 3115
    :goto_5
    return-void

    .line 3113
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public trainPredicts(Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "text"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 3057
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 3058
    .local v3, len:I
    if-ge v3, v7, :cond_9

    .line 3108
    :cond_8
    :goto_8
    return-void

    .line 3061
    :cond_9
    sub-int v5, v3, v8

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3063
    .local v2, last:C
    :try_start_f
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isPunctuation(C)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 3064
    sub-int v0, v3, v7

    .line 3065
    .local v0, i:I
    :goto_17
    if-ltz v0, :cond_2c

    invoke-direct {p0, p1, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isCJK(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isPunctuation(C)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 3066
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 3068
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    .line 3069
    sub-int v5, v3, v8

    if-ge v0, v5, :cond_3f

    .line 3070
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imTrainPredicts(Ljava/lang/String;)V

    .line 3073
    :cond_3f
    sub-int v5, v3, v7

    if-ge v0, v5, :cond_8

    .line 3074
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    sub-int v6, v3, v7

    invoke-interface {p1, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imTrainPredicts(Ljava/lang/String;)V

    goto :goto_8

    .line 3106
    .end local v0           #i:I
    :catch_53
    move-exception v5

    goto :goto_8

    .line 3079
    :cond_55
    sub-int v5, v3, v8

    invoke-direct {p0, p1, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isCJK(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_75

    sub-int v5, v3, v7

    invoke-direct {p0, p1, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isCJK(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 3080
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    sub-int v6, v3, v7

    invoke-interface {p1, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imTrainPredicts(Ljava/lang/String;)V

    goto :goto_8

    .line 3083
    :cond_75
    sub-int v5, v3, v8

    invoke-direct {p0, p1, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isCJK(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_8

    sub-int v5, v3, v7

    invoke-direct {p0, p1, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isAlphabetOrDigit(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3084
    const/4 v5, 0x3

    sub-int v0, v3, v5

    .line 3085
    .restart local v0       #i:I
    :goto_88
    if-ltz v0, :cond_93

    invoke-direct {p0, p1, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isAlphabetOrDigit(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 3086
    add-int/lit8 v0, v0, -0x1

    goto :goto_88

    .line 3088
    :cond_93
    add-int/lit8 v0, v0, 0x1

    .line 3089
    sub-int v5, v3, v7

    if-ge v0, v5, :cond_8

    .line 3091
    const/16 v4, 0x8

    .line 3092
    .local v4, maxLength:I
    :goto_9b
    sub-int v5, v3, v7

    if-ge v0, v5, :cond_8

    .line 3093
    sub-int v5, v3, v7

    sub-int/2addr v5, v0

    add-int/lit8 v1, v5, 0x1

    .line 3094
    .local v1, l:I
    if-le v1, v4, :cond_a7

    .line 3095
    move v1, v4

    .line 3097
    :cond_a7
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mIDecoderService:Lcom/google/android/inputmethod/pinyin/IDecoder;

    add-int v6, v0, v1

    invoke-interface {p1, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imTrainPredicts(Ljava/lang/String;)V
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_b6} :catch_53

    .line 3100
    sub-int v5, v4, v8

    add-int/lit8 v0, v0, 0x7

    .line 3101
    goto :goto_9b
.end method
