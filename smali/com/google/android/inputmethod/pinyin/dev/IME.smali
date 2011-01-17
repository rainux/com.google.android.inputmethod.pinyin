.class public Lcom/google/android/inputmethod/pinyin/dev/IME;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;
.implements Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;


# static fields
.field public static final ENABLE_INLINE_COMPOSING_TEXT:Z = false

.field public static final FLAG_CHINESE_INPUT_CONTEXT:I = 0x1

.field public static final FLAG_ENGLISH_INPUT_CONTEXT:I = 0x2

.field public static final MODE_NONE:I = 0x100

.field public static final MODE_T9_ABC:I = 0x2

.field public static final MODE_T9_DIGIT:I = 0x3

.field public static final MODE_T9_PINYIN:I = 0x0

.field public static final MODE_T9_SMILEY:I = 0x5

.field public static final MODE_T9_STROKE:I = 0x1

.field public static final MODE_T9_SYMBOL:I = 0x4

.field public static final MODE_VOICE:I = 0x6

.field public static final NR_MODE:I = 0x7

.field public static final USING_OLD_CANDIDATES_CONTAINER_IMPL:Z = true


# instance fields
.field private mCandidateReset:Z

.field private mCandidateView:Lcom/google/android/inputmethod/pinyin/dev/CandidateView;

.field private mComposingWindow:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

.field private mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

.field private mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

.field private mFlags:I

.field private mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

.field private mPreviousProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

.field private mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

.field private mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

.field private mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

.field private mSwallowDpadEvents:Z


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V
    .registers 6
    .parameter "ims"

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    .line 77
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSwallowDpadEvents:Z

    .line 81
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCandidateReset:Z

    .line 84
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    .line 87
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 90
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    .line 92
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-direct {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    .line 93
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-virtual {v0, p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->setEventListener(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;)V

    .line 100
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mComposingWindow:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    .line 103
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;

    invoke-direct {v2, p0}, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    aput-object v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;

    invoke-direct {v2, p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    aput-object v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;

    invoke-direct {v2, p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    const/4 v1, 0x4

    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;

    invoke-direct {v2, p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    aput-object v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    aput-object v1, v0, v3

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/dev/IME;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->isCandidatesReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/dev/IME;)Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mComposingWindow:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/inputmethod/pinyin/dev/IME;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->startDecoder()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/inputmethod/pinyin/dev/IME;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/IDecoder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    return-object p1
.end method

.method private adjustCandidateFontSize()V
    .registers 5

    .prologue
    .line 148
    const/4 v0, 0x1

    .line 150
    .local v0, candidateMode:I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_b

    .line 151
    const/4 v0, 0x0

    .line 155
    :cond_b
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->setCandidateMode(I)V

    .line 157
    return-void
.end method

.method private getMode(Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;)I
    .registers 4
    .parameter "ip"

    .prologue
    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 161
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_e

    move v1, v0

    .line 165
    :goto_d
    return v1

    .line 160
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isCandidatesReady()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 382
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    .line 383
    .local v0, candidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->isShown()Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v3

    .line 390
    :goto_e
    return v2

    .line 386
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getActiveCandiatePos()I

    move-result v1

    .line 387
    .local v1, choiceId:I
    if-gez v1, :cond_17

    move v2, v3

    .line 388
    goto :goto_e

    .line 390
    :cond_17
    const/4 v2, 0x1

    goto :goto_e
.end method

.method private setCandidates(Ljava/util/List;Z)V
    .registers 7
    .parameter
    .parameter "enableHighlight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 260
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCandidateReset:Z

    .line 264
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    .line 265
    .local v0, candidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getDecodingInfo()Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-result-object v1

    .line 266
    .local v1, decInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;
    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->reset()V

    .line 267
    iput-object p1, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    .line 268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mTotalChoicesNum:I

    .line 269
    invoke-virtual {v0, v1, p2, v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->showCandidates(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;ZI)V

    .line 271
    return-void
.end method

.method private startDecoder()V
    .registers 5

    .prologue
    .line 347
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    if-eqz v1, :cond_5

    .line 367
    :cond_4
    :goto_4
    return-void

    .line 350
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 351
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/inputmethod/pinyin/DecoderService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 352
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/IME$3;

    invoke-direct {v2, p0}, Lcom/google/android/inputmethod/pinyin/dev/IME$3;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4
.end method

.method private switchTo(Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;)V
    .registers 6
    .parameter "ip"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_25

    .line 170
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mFlags:I

    .line 175
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    if-ne v0, p1, :cond_35

    .line 176
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mFlags:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 178
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->adjustCandidateFontSize()V

    .line 196
    :goto_24
    return-void

    .line 171
    :cond_25
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_32

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    aget-object v0, v0, v2

    if-ne p1, v0, :cond_a

    .line 172
    :cond_32
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mFlags:I

    goto :goto_a

    .line 181
    :cond_35
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getMode(Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/Settings;->setLastMode(I)V

    .line 183
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPreviousProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    .line 185
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    if-eqz v0, :cond_49

    .line 186
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onRelease()V

    .line 189
    :cond_49
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    .line 190
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mFlags:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 193
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->adjustCandidateFontSize()V

    .line 195
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-interface {p1}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->setSoftKeys([Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    goto :goto_24
.end method


# virtual methods
.method public blockingStartDecoder()V
    .registers 5

    .prologue
    const-class v3, Lcom/google/android/inputmethod/pinyin/dev/IME;

    .line 323
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/IME$2;

    invoke-direct {v2, p0}, Lcom/google/android/inputmethod/pinyin/dev/IME$2;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 329
    const-class v1, Lcom/google/android/inputmethod/pinyin/dev/IME;

    monitor-enter v3

    .line 330
    :try_start_12
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    if-eqz v2, :cond_1e

    .line 331
    monitor-exit v1

    .line 344
    :goto_17
    return-void

    .line 336
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 337
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_25

    if-nez v2, :cond_23

    .line 335
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1e
    :try_start_1e
    const-class v2, Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_23} :catch_18

    .line 343
    :cond_23
    :try_start_23
    monitor-exit v1

    goto :goto_17

    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public convertScList(Ljava/util/List;)Ljava/util/List;
    .registers 3
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
    .line 256
    .local p1, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getDecodingInfo()Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->convertScList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getAutoDictionary()Lcom/android/inputmethod/latin/AutoDictionary;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getAutoDictionary()Lcom/android/inputmethod/latin/AutoDictionary;

    move-result-object v0

    return-object v0
.end method

.method getBinaryDictionary()Lcom/android/inputmethod/latin/BinaryDictionary;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getBinaryDictionary()Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCandidatesView()Landroid/view/View;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    return-object v0
.end method

.method public getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v0

    return-object v0
.end method

.method getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    return-object v0
.end method

.method public getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    return-object v0
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method getUserDictionary()Lcom/android/inputmethod/latin/UserDictionary;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getUserDictionary()Lcom/android/inputmethod/latin/UserDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->updateSoftKeyboard()V

    .line 126
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->init()V

    .line 112
    return-void
.end method

.method public maySubmitCandidate()Z
    .registers 7

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->isCandidatesReady()Z

    move-result v3

    if-nez v3, :cond_8

    .line 398
    const/4 v3, 0x0

    .line 406
    :goto_7
    return v3

    .line 401
    :cond_8
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    .line 402
    .local v0, candidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getActiveCandiatePos()I

    move-result v1

    .line 403
    .local v1, choiceId:I
    const-string v3, "IME.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "choiceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getDecodingInfo()Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-result-object v2

    .line 405
    .local v2, decInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;
    invoke-virtual {v2, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCandidate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onCandidateTouched(ILjava/lang/String;)V

    .line 406
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public onCandidateTouched(ILjava/lang/String;)V
    .registers 4
    .parameter "index"
    .parameter "text"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-interface {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onCandidateTouched(ILjava/lang/String;)V

    .line 253
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 2
    .parameter "outInsets"

    .prologue
    .line 555
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 453
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mComposingWindow:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    if-eqz v0, :cond_e

    .line 454
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mComposingWindow:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->dismiss()V

    .line 457
    :cond_e
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    if-eqz v0, :cond_17

    .line 458
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->release()V

    .line 460
    :cond_17
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    .line 461
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->init()V

    .line 462
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-virtual {v0, p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->setEventListener(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;)V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mComposingWindow:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    .line 475
    return-void
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 435
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCandidatesView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 437
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .parameter "completions"

    .prologue
    .line 593
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .registers 2
    .parameter "finishingInput"

    .prologue
    .line 588
    return-void
.end method

.method public onFinishInput()V
    .registers 1

    .prologue
    .line 586
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 3
    .parameter "finishingInput"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    if-eqz v0, :cond_9

    .line 578
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onRelease()V

    .line 580
    :cond_9
    return-void
.end method

.method public onKey(ILjava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "data"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-interface {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onKey(ILjava/lang/Object;)V

    .line 200
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 478
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    .line 479
    .local v0, candidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;
    sparse-switch p1, :sswitch_data_24

    .line 499
    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 481
    :sswitch_c
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    .line 482
    goto :goto_b

    .line 491
    :sswitch_16
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSwallowDpadEvents:Z

    if-eqz v1, :cond_1c

    move v1, v2

    .line 492
    goto :goto_b

    .line 494
    :cond_1c
    if-eqz v0, :cond_a

    .line 495
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->isShown()Z

    move-result v1

    goto :goto_b

    .line 479
    nop

    :sswitch_data_24
    .sparse-switch
        0x4 -> :sswitch_c
        0x13 -> :sswitch_16
        0x14 -> :sswitch_16
        0x15 -> :sswitch_16
        0x16 -> :sswitch_16
        0x17 -> :sswitch_16
        0x3e -> :sswitch_16
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 503
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    .line 505
    .local v0, candidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;
    sparse-switch p1, :sswitch_data_70

    :cond_b
    move v3, v5

    .line 548
    :goto_c
    return v3

    .line 507
    :sswitch_d
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 508
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    if-eqz v3, :cond_1c

    .line 509
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-interface {v3}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onReset()V

    .line 511
    :cond_1c
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v3, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesViewShown(Z)V

    move v3, v4

    .line 512
    goto :goto_c

    .line 517
    :sswitch_23
    iget-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSwallowDpadEvents:Z

    if-eqz v3, :cond_29

    move v3, v4

    .line 518
    goto :goto_c

    .line 520
    :cond_29
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->isCandidatesReady()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 521
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getActiveCandiatePos()I

    move-result v1

    .line 522
    .local v1, choiceId:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getDecodingInfo()Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-result-object v2

    .line 523
    .local v2, decInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;
    invoke-virtual {v2, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCandidate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onCandidateTouched(ILjava/lang/String;)V

    move v3, v4

    .line 524
    goto :goto_c

    .end local v1           #choiceId:I
    .end local v2           #decInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;
    :cond_42
    move v3, v5

    .line 526
    goto :goto_c

    .line 528
    :sswitch_44
    iget-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSwallowDpadEvents:Z

    if-eqz v3, :cond_4a

    move v3, v4

    .line 529
    goto :goto_c

    .line 531
    :cond_4a
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->activeCurseBackward()Z

    move-result v3

    goto :goto_c

    .line 533
    :sswitch_4f
    iget-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSwallowDpadEvents:Z

    if-eqz v3, :cond_55

    move v3, v4

    .line 534
    goto :goto_c

    .line 536
    :cond_55
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->activeCurseForward()Z

    move-result v3

    goto :goto_c

    .line 538
    :sswitch_5a
    iget-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSwallowDpadEvents:Z

    if-eqz v3, :cond_60

    move v3, v4

    .line 539
    goto :goto_c

    .line 541
    :cond_60
    invoke-virtual {v0, v5, v4}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageBackward(ZZ)Z

    move-result v3

    goto :goto_c

    .line 543
    :sswitch_65
    iget-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSwallowDpadEvents:Z

    if-eqz v3, :cond_6b

    move v3, v4

    .line 544
    goto :goto_c

    .line 546
    :cond_6b
    invoke-virtual {v0, v5, v4}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageForward(ZZ)Z

    move-result v3

    goto :goto_c

    .line 505
    :sswitch_data_70
    .sparse-switch
        0x4 -> :sswitch_d
        0x13 -> :sswitch_5a
        0x14 -> :sswitch_65
        0x15 -> :sswitch_44
        0x16 -> :sswitch_4f
        0x17 -> :sswitch_23
        0x3e -> :sswitch_23
    .end sparse-switch
.end method

.method public onLongPress(ILjava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "data"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-interface {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onLongPress(ILjava/lang/Object;)V

    .line 204
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    if-eqz v0, :cond_9

    .line 563
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-interface {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 565
    :cond_9
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 7
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->guessBestT9Mode()I

    move-result v0

    .line 569
    .local v0, mode:I
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchTo(I)V

    .line 570
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    if-eqz v1, :cond_1a

    .line 571
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mFlags:I

    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 573
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->adjustCandidateFontSize()V

    .line 574
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 7
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 591
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->release()V

    .line 116
    return-void
.end method

.method public requestHideSelf(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 595
    return-void
.end method

.method public resetCandidateWindow()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 239
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetCandidateWindow()V

    .line 240
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCandidateReset:Z

    if-nez v0, :cond_e

    .line 241
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCandidateReset:Z

    move v0, v1

    .line 244
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public sendEnterEvent()V
    .registers 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->sendDefaultEditorAction(Z)Z

    move-result v0

    if-nez v0, :cond_10

    .line 411
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->sendDownUpKeyEvents(I)V

    .line 413
    :cond_10
    return-void
.end method

.method public setPrediction(Ljava/util/List;)V
    .registers 3
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
    .line 278
    .local p1, prediction:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->setCandidates(Ljava/util/List;Z)V

    .line 279
    return-void
.end method

.method public setSuggestion(Ljava/util/List;)V
    .registers 3
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
    .line 274
    .local p1, suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->setCandidates(Ljava/util/List;Z)V

    .line 275
    return-void
.end method

.method public setSwallowDpadEvents(Z)V
    .registers 2
    .parameter "swallow"

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSwallowDpadEvents:Z

    .line 553
    return-void
.end method

.method public showCandidateWindow(Z)V
    .registers 3
    .parameter "visiable"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesViewShown(Z)V

    .line 236
    return-void
.end method

.method public showComposingWindow(Ljava/lang/CharSequence;Z)V
    .registers 6
    .parameter "text"
    .parameter "visible"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mComposingWindow:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    if-nez v0, :cond_13

    .line 291
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mComposingWindow:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    .line 293
    :cond_13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/IME$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/inputmethod/pinyin/dev/IME$1;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;ZLjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method public showOptionMenu()V
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->showOptionsMenu()V

    .line 371
    return-void
.end method

.method public switchTo(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mProcessors:[Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    aget-object v0, v1, p1

    .line 144
    .local v0, ip:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchTo(Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;)V

    .line 145
    return-void
.end method

.method public switchToPreviousMode()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPreviousProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    if-eqz v0, :cond_9

    .line 212
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPreviousProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchTo(Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;)V

    .line 214
    :cond_9
    return-void
.end method

.method public switchToQwerty()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    if-eqz v0, :cond_9

    .line 219
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->onRelease()V

    .line 221
    :cond_9
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mPinyinIME:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->switchBackToQwerty()V

    .line 222
    return-void
.end method

.method public updateSoftKeyboard()V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    if-eqz v0, :cond_f

    .line 230
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mSoftKeyboardView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME;->mCurrentProcessor:Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;->getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->setSoftKeys([Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 232
    :cond_f
    return-void
.end method
