.class public Lcom/google/android/inputmethod/pinyin/PinyinIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "PinyinIME.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/PinyinIME$3;,
        Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;,
        Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;,
        Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;,
        Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;,
        Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;,
        Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;
    }
.end annotation


# static fields
.field private static final MAX_CANDIDATE_COUNT_IN_TRADITIONAL_MODE:I = 0xc8

.field private static final NEWLINE_STRING:Ljava/lang/String; = "\n"

.field private static final SIMULATE_KEY_DELETE:Z = true

.field private static final SKB_PREF_VERSION:I = 0x1

.field static final TAG:Ljava/lang/String; = "PinyinIME"

.field private static mLastInstance:Lcom/google/android/inputmethod/pinyin/PinyinIME;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field mBackgroundThread:Landroid/os/HandlerThread;

.field private mCandidatesBalloon:Lcom/google/android/inputmethod/pinyin/BalloonHint;

.field private mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

.field private mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

.field private mChoiceNotifier:Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;

.field private mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

.field private mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

.field private mDecoderServiceConnection:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

.field private mFloatingContainer:Landroid/widget/LinearLayout;

.field private mFloatingWindow:Landroid/widget/PopupWindow;

.field private mFloatingWindowTimer:Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;

.field private mGestureDetectorCandidates:Landroid/view/GestureDetector;

.field private mGestureDetectorSkb:Landroid/view/GestureDetector;

.field private mGestureListenerCandidates:Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;

.field private mGestureListenerSkb:Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;

.field private mImEn:Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;

.field private mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

.field protected mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

.field private mIsFinishingInputViewRecursively:Z

.field private mIsQWERTYKeyboard:Z

.field private mKeyMap:Lcom/google/android/inputmethod/pinyin/AdjacencyMap;

.field private mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

.field private mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

.field private mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mOriginalIndex:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

.field private mSkbPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLastInstance:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 141
    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;

    invoke-direct {v0, p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;Lcom/google/android/inputmethod/pinyin/PinyinIME$1;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindowTimer:Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;

    .line 193
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 199
    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    .line 211
    new-instance v0, Lcom/google/android/inputmethod/pinyin/AdjacencyMap;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/AdjacencyMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mKeyMap:Lcom/google/android/inputmethod/pinyin/AdjacencyMap;

    .line 214
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    .line 218
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mOriginalIndex:[I

    .line 219
    new-instance v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$1;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$1;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    .line 243
    new-instance v0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;-><init>(Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    .line 2283
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/CandidatesContainer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/inputmethod/pinyin/PinyinIME;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->onChoiceTouched(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/dev/IME;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/inputmethod/pinyin/PinyinIME;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->changeToStateInput(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->usePredictionChinese()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/android/inputmethod/pinyin/PinyinIME;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getTypedWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->launchSettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private changeToStateComposing(Z)V
    .registers 4
    .parameter "updateUi"

    .prologue
    .line 1095
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 1096
    if-nez p1, :cond_7

    .line 1101
    :cond_6
    :goto_6
    return-void

    .line 1098
    :cond_7
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1099
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->toggleCandidateMode(Z)V

    goto :goto_6
.end method

.method private changeToStateInput(Z)V
    .registers 4
    .parameter "updateUi"

    .prologue
    const/4 v1, 0x1

    .line 1104
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 1105
    if-nez p1, :cond_8

    .line 1111
    :goto_7
    return-void

    .line 1107
    :cond_8
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1108
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->toggleCandidateMode(Z)V

    .line 1110
    :cond_19
    invoke-direct {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->showCandidateWindow(Z)V

    goto :goto_7
.end method

.method private chooseAndUpdate(IZ)V
    .registers 11
    .parameter "candId"
    .parameter "doPredictIsPossible"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1199
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseText()Z

    move-result v4

    if-nez v4, :cond_19

    .line 1200
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCandidate(I)Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, choice:Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 1202
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1204
    :cond_15
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1271
    .end local v0           #choice:Ljava/lang/String;
    :goto_18
    return-void

    .line 1208
    :cond_19
    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v4, v5, :cond_85

    .line 1212
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v4, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$300(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;I)V

    .line 1218
    :goto_24
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getComposingStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_bf

    .line 1220
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getComposingStrActivePart()Ljava/lang/String;

    move-result-object v3

    .line 1223
    .local v3, resultStr:Ljava/lang/String;
    if-ltz p1, :cond_99

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->canDoPrediction()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 1224
    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1226
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->onInputCycleEnd()V

    .line 1228
    if-eqz p2, :cond_95

    .line 1229
    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iput-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 1230
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->isShown()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1231
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v4, v6}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->toggleCandidateMode(Z)V

    .line 1234
    :cond_5f
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->usePredictionChinese()Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 1235
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1236
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_77

    .line 1237
    const/4 v4, 0x3

    invoke-interface {v2, v4, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1238
    .local v1, cs:Ljava/lang/CharSequence;
    if-eqz v1, :cond_77

    .line 1239
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->preparePredicts(Ljava/lang/CharSequence;)V

    .line 1246
    .end local v1           #cs:Ljava/lang/CharSequence;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_77
    :goto_77
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v4, v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_91

    .line 1247
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->showCandidateWindow(Z)V

    goto :goto_18

    .line 1215
    .end local v3           #resultStr:Ljava/lang/String;
    :cond_85
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v4, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$400(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;I)V

    goto :goto_24

    .line 1243
    .restart local v3       #resultStr:Ljava/lang/String;
    :cond_8b
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->resetCandidates()V

    goto :goto_77

    .line 1249
    :cond_91
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto :goto_18

    .line 1252
    :cond_95
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto :goto_18

    .line 1255
    :cond_99
    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v4, v5, :cond_b3

    .line 1256
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getSplStrDecodedLen()I

    move-result v4

    if-nez v4, :cond_af

    .line 1257
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->changeToStateComposing(Z)V

    .line 1266
    :cond_aa
    :goto_aa
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->showCandidateWindow(Z)V

    goto/16 :goto_18

    .line 1259
    :cond_af
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->changeToStateInput(Z)V

    goto :goto_aa

    .line 1262
    :cond_b3
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->selectionFinished()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 1263
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->changeToStateComposing(Z)V

    goto :goto_aa

    .line 1269
    .end local v3           #resultStr:Ljava/lang/String;
    :cond_bf
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto/16 :goto_18
.end method

.method private chooseCandidate(IZ)V
    .registers 4
    .parameter "activeCandNo"
    .parameter "doPredictionIfPossible"

    .prologue
    .line 1277
    if-gez p1, :cond_8

    .line 1278
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getActiveCandiatePos()I

    move-result p1

    .line 1280
    :cond_8
    if-ltz p1, :cond_d

    .line 1281
    invoke-direct {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseAndUpdate(IZ)V

    .line 1283
    :cond_d
    return-void
.end method

.method private dismissCandidateWindow()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const-string v3, "PinyinIME"

    .line 1575
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1576
    const-string v1, "PinyinIME"

    const-string v1, "Candidates window is to be dismissed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_12
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    if-nez v1, :cond_17

    .line 1589
    :cond_16
    :goto_16
    return-void

    .line 1580
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindowTimer:Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->cancelShowing()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_31

    .line 1584
    :goto_1c
    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesViewShown(Z)V

    .line 1586
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1587
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->toggleCandidateMode(Z)V

    goto :goto_16

    .line 1581
    :catch_31
    move-exception v1

    move-object v0, v1

    .line 1582
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PinyinIME"

    const-string v1, "Fail to show the PopupWindow."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public static getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;
    .registers 1

    .prologue
    .line 267
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLastInstance:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    return-object v0
.end method

.method private getTypedWord()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3162
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3163
    .local v0, userInput:Ljava/lang/String;
    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$3;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_42

    .line 3172
    :goto_1b
    return-object v0

    .line 3165
    :pswitch_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3167
    goto :goto_1b

    .line 3169
    :pswitch_3c
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 3163
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_3c
    .end packed-switch
.end method

.method private inputCommaPeriod(Ljava/lang/String;IZLcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;)V
    .registers 7
    .parameter "preEdit"
    .parameter "keyChar"
    .parameter "dismissCandWindow"
    .parameter "nextState"

    .prologue
    .line 1161
    const/16 v0, 0x2c

    if-ne p2, v0, :cond_23

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1168
    :goto_18
    invoke-virtual {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1169
    if-eqz p3, :cond_20

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetCandidateWindow()V

    .line 1170
    :cond_20
    iput-object p4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 1171
    :cond_22
    return-void

    .line 1163
    :cond_23
    const/16 v0, 0x2e

    if-ne p2, v0, :cond_22

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_18
.end method

.method private launchSettings()V
    .registers 3

    .prologue
    .line 1899
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1900
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/google/android/inputmethod/pinyin/SettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1901
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1902
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->startActivity(Landroid/content/Intent;)V

    .line 1903
    return-void
.end method

.method private needSpellCorrection()Z
    .registers 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 258
    .local v0, v:I
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getSpellCorrection()Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v1, 0x80

    if-eq v0, v1, :cond_24

    const/16 v1, 0x90

    if-eq v0, v1, :cond_24

    const/16 v1, 0x20

    if-eq v0, v1, :cond_24

    const/16 v1, 0x10

    if-eq v0, v1, :cond_24

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v1, v2, :cond_24

    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method private onChoiceTouched(I)V
    .registers 8
    .parameter "activeCandNo"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1820
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v2, v3, :cond_c

    .line 1821
    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->changeToStateInput(Z)V

    .line 1843
    :cond_b
    :goto_b
    return-void

    .line 1822
    :cond_c
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v2, v3, :cond_18

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v2, v3, :cond_1c

    .line 1824
    :cond_18
    invoke-direct {p0, p1, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseCandidate(IZ)V

    goto :goto_b

    .line 1825
    :cond_1c
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v2, v3, :cond_4a

    .line 1826
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$600(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    if-eqz v2, :cond_46

    if-ltz p1, :cond_46

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$600(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    array-length v2, v2

    if-ge p1, v2, :cond_46

    .line 1828
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$600(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 1829
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_46

    .line 1830
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1831
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1834
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_46
    invoke-direct {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto :goto_b

    .line 1835
    :cond_4a
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v2, v3, :cond_b

    .line 1836
    invoke-direct {p0, p1, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseCandidate(IZ)V

    .line 1837
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v2

    sget-object v3, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    if-ne v2, v3, :cond_64

    .line 1838
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    .line 1840
    :cond_64
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1841
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    goto :goto_b
.end method

.method private processFunctionKeys(Landroid/view/KeyEvent;Z)Z
    .registers 11
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/16 v6, 0x42

    const/16 v5, 0x43

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v7, "\n"

    .line 537
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 539
    .local v0, keyCode:I
    if-ne v0, v6, :cond_1a

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v1, v2, :cond_1a

    .line 540
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->submitLatinPrediction()V

    .line 541
    invoke-direct {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 545
    :cond_1a
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2d

    .line 546
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 547
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1, p2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v3

    .line 648
    :goto_2c
    return v1

    .line 552
    :cond_2d
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseText()Z

    move-result v1

    if-eqz v1, :cond_37

    move v1, v4

    .line 553
    goto :goto_2c

    .line 556
    :cond_37
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    if-eqz v1, :cond_d0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_d0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isCandidatesListEmpty()Z

    move-result v1

    if-nez v1, :cond_d0

    .line 558
    const/16 v1, 0x17

    if-ne v0, v1, :cond_59

    .line 559
    if-nez p2, :cond_53

    move v1, v3

    goto :goto_2c

    .line 561
    :cond_53
    const/4 v1, -0x1

    invoke-direct {p0, v1, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseCandidate(IZ)V

    move v1, v3

    .line 562
    goto :goto_2c

    .line 565
    :cond_59
    const/16 v1, 0x15

    if-ne v0, v1, :cond_68

    .line 566
    if-nez p2, :cond_61

    move v1, v3

    goto :goto_2c

    .line 567
    :cond_61
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->activeCurseBackward()Z

    move v1, v3

    .line 568
    goto :goto_2c

    .line 571
    :cond_68
    const/16 v1, 0x16

    if-ne v0, v1, :cond_77

    .line 572
    if-nez p2, :cond_70

    move v1, v3

    goto :goto_2c

    .line 573
    :cond_70
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->activeCurseForward()Z

    move v1, v3

    .line 574
    goto :goto_2c

    .line 577
    :cond_77
    const/16 v1, 0x13

    if-ne v0, v1, :cond_86

    .line 578
    if-nez p2, :cond_7f

    move v1, v3

    goto :goto_2c

    .line 579
    :cond_7f
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v1, v4, v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageBackward(ZZ)Z

    move v1, v3

    .line 580
    goto :goto_2c

    .line 583
    :cond_86
    const/16 v1, 0x14

    if-ne v0, v1, :cond_95

    .line 584
    if-nez p2, :cond_8e

    move v1, v3

    goto :goto_2c

    .line 585
    :cond_8e
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v1, v4, v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageForward(ZZ)Z

    move v1, v3

    .line 586
    goto :goto_2c

    .line 589
    :cond_95
    if-ne v0, v5, :cond_a6

    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v1, v2, :cond_a6

    .line 591
    if-nez p2, :cond_a1

    move v1, v3

    goto :goto_2c

    .line 592
    :cond_a1
    invoke-direct {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    move v1, v3

    .line 593
    goto :goto_2c

    .line 596
    :cond_a6
    if-ne v0, v5, :cond_152

    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v1, v2, :cond_152

    .line 598
    if-nez p2, :cond_b3

    move v1, v3

    .line 599
    goto/16 :goto_2c

    .line 601
    :cond_b3
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-lez v1, :cond_cd

    .line 602
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 603
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateLatinPredictCandidates()V

    .line 604
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 605
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    :cond_cd
    move v1, v3

    .line 607
    goto/16 :goto_2c

    .line 610
    :cond_d0
    if-ne v0, v5, :cond_fe

    .line 611
    if-nez p2, :cond_d7

    move v1, v3

    goto/16 :goto_2c

    .line 612
    :cond_d7
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    if-eqz v1, :cond_f8

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-lez v1, :cond_f8

    .line 613
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 614
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateLatinPredictCandidates()V

    .line 615
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 616
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    move v1, v3

    .line 617
    goto/16 :goto_2c

    .line 620
    :cond_f8
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->simulateKeyEventDownUp(I)V

    move v1, v3

    .line 624
    goto/16 :goto_2c

    .line 626
    :cond_fe
    if-ne v0, v6, :cond_12a

    .line 627
    if-nez p2, :cond_105

    move v1, v3

    goto/16 :goto_2c

    .line 628
    :cond_105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 629
    const-string v1, "\n"

    invoke-virtual {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    :goto_110
    move v1, v3

    .line 636
    goto/16 :goto_2c

    .line 631
    :cond_113
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->sendKeyChar(C)V

    .line 632
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    const-string v2, "\n"

    invoke-virtual {v1, v7}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 634
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    goto :goto_110

    .line 638
    :cond_12a
    const/16 v1, 0x3e

    if-ne v0, v1, :cond_152

    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v1, v2, :cond_152

    .line 639
    if-nez p2, :cond_139

    move v1, v3

    goto/16 :goto_2c

    .line 640
    :cond_139
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->sendKeyChar(C)V

    .line 641
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    const-string v2, " "

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 643
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    move v1, v3

    .line 644
    goto/16 :goto_2c

    :cond_152
    move v1, v4

    .line 648
    goto/16 :goto_2c
.end method

.method private processKey(Landroid/view/KeyEvent;Z)Z
    .registers 14
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/16 v10, 0x1d

    const/4 v9, 0x7

    const/16 v6, 0x3e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 406
    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_BYPASS:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v4, v5, :cond_f

    move v4, v7

    .line 518
    :goto_e
    return v4

    .line 408
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 411
    .local v2, keyCode:I
    if-ne v6, v2, :cond_36

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 412
    if-nez p2, :cond_1f

    move v4, v8

    goto :goto_e

    .line 414
    :cond_1f
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->switchLanguageWithHkb()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateIcon(I)V

    .line 415
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 417
    const/16 v0, 0xf7

    .line 421
    .local v0, allMetaState:I
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    move v4, v8

    .line 422
    goto :goto_e

    .line 427
    .end local v0           #allMetaState:I
    :cond_36
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnglishWithHkb()Z

    move-result v4

    if-eqz v4, :cond_40

    move v4, v7

    .line 428
    goto :goto_e

    .line 431
    :cond_40
    invoke-direct {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processFunctionKeys(Landroid/view/KeyEvent;Z)Z

    move-result v4

    if-eqz v4, :cond_48

    move v4, v8

    .line 432
    goto :goto_e

    .line 435
    :cond_48
    const/4 v1, 0x0

    .line 436
    .local v1, keyChar:I
    if-lt v2, v10, :cond_67

    const/16 v4, 0x36

    if-gt v2, v4, :cond_67

    .line 437
    sub-int v4, v2, v10

    add-int/lit8 v1, v4, 0x61

    .line 455
    :cond_53
    :goto_53
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnglishWithSkb()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 456
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v4, v5, :cond_bd

    .line 457
    if-ne v2, v6, :cond_bd

    .line 458
    if-nez p2, :cond_9a

    move v4, v8

    .line 459
    goto :goto_e

    .line 438
    :cond_67
    if-lt v2, v9, :cond_72

    const/16 v4, 0x10

    if-gt v2, v4, :cond_72

    .line 440
    sub-int v4, v2, v9

    add-int/lit8 v1, v4, 0x30

    goto :goto_53

    .line 441
    :cond_72
    const/16 v4, 0x37

    if-ne v2, v4, :cond_79

    .line 442
    const/16 v1, 0x2c

    goto :goto_53

    .line 443
    :cond_79
    const/16 v4, 0x38

    if-ne v2, v4, :cond_80

    .line 444
    const/16 v1, 0x2e

    goto :goto_53

    .line 445
    :cond_80
    if-ne v2, v6, :cond_85

    .line 446
    const/16 v1, 0x20

    goto :goto_53

    .line 447
    :cond_85
    const/16 v4, 0x4b

    if-ne v2, v4, :cond_8c

    .line 448
    const/16 v1, 0x27

    goto :goto_53

    .line 449
    :cond_8c
    const/16 v4, 0x11

    if-ne v2, v4, :cond_93

    .line 450
    const/16 v1, 0x2a

    goto :goto_53

    .line 451
    :cond_93
    const/16 v4, 0x4a

    if-ne v2, v4, :cond_53

    .line 452
    const/16 v1, 0x3b

    goto :goto_53

    .line 461
    :cond_9a
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->submitLatinPrediction()V

    .line 462
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 463
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->sendKeyChar(C)V

    .line 464
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    const-string v5, " "

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 465
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 466
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    .line 467
    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iput-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move v4, v8

    .line 468
    goto/16 :goto_e

    .line 471
    :cond_bd
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->usePredictionEnglish()Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 472
    const/16 v4, 0x61

    if-lt v1, v4, :cond_ec

    const/16 v4, 0x7a

    if-gt v1, v4, :cond_ec

    .line 473
    if-eqz p2, :cond_e9

    .line 474
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mKeyMap:Lcom/google/android/inputmethod/pinyin/AdjacencyMap;

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/inputmethod/pinyin/AdjacencyMap;->getAdjacentCodes(I)[I

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/android/inputmethod/latin/WordComposer;->add(I[I)V

    .line 476
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateLatinPredictCandidates()V

    .line 477
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 478
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    :cond_e9
    move v4, v8

    .line 480
    goto/16 :goto_e

    :cond_ec
    move v4, v7

    .line 482
    goto/16 :goto_e

    .line 485
    :cond_ef
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->usePredictionEnglish()Z

    move-result v4

    if-nez v4, :cond_12f

    .line 486
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImEn:Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnglishUpperCaseWithSkb()Z

    move-result v6

    invoke-virtual {v4, v5, p1, v6, p2}, Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;->processKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;ZZ)Z

    move-result v3

    .line 488
    .local v3, ret:Z
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    int-to-char v5, v1

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 490
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnglishUpperCaseWithSkb()Z

    move-result v4

    if-eqz v4, :cond_12c

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnglishUpperCaseLocked()Z

    move-result v4

    if-nez v4, :cond_12c

    .line 492
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestBackToEnLowerSkb()I

    .line 493
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 494
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    :cond_12c
    move v4, v3

    .line 496
    goto/16 :goto_e

    .end local v3           #ret:Z
    :cond_12f
    move v4, v7

    .line 498
    goto/16 :goto_e

    .line 499
    :cond_132
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseText()Z

    move-result v4

    if-eqz v4, :cond_174

    .line 500
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v4, v5, :cond_146

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v4, v5, :cond_150

    .line 502
    :cond_146
    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iput-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 503
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processStateIdle(IILandroid/view/KeyEvent;Z)Z

    move-result v4

    goto/16 :goto_e

    .line 504
    :cond_150
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v4, v5, :cond_15c

    .line 505
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processStateInput(IILandroid/view/KeyEvent;Z)Z

    move-result v4

    goto/16 :goto_e

    .line 506
    :cond_15c
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v4, v5, :cond_168

    .line 507
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processStatePredict(IILandroid/view/KeyEvent;Z)Z

    move-result v4

    goto/16 :goto_e

    .line 508
    :cond_168
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v4, v5, :cond_180

    .line 509
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processStateEditComposing(IILandroid/view/KeyEvent;Z)Z

    move-result v4

    goto/16 :goto_e

    .line 513
    :cond_174
    if-eqz v1, :cond_180

    if-eqz p2, :cond_180

    .line 514
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    :cond_180
    move v4, v7

    .line 518
    goto/16 :goto_e
.end method

.method private processStateEditComposing(IILandroid/view/KeyEvent;Z)Z
    .registers 14
    .parameter "keyChar"
    .parameter "keyCode"
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/16 v8, 0x42

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 954
    if-nez p4, :cond_8

    move v4, v7

    .line 1030
    :goto_7
    return v4

    .line 956
    :cond_8
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getComposingStatus()Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    move-result-object v0

    .line 962
    .local v0, cmpsvStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 963
    const/16 v4, 0x27

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v5

    if-eq v4, v5, :cond_61

    .line 964
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/KeyMap;->getChineseLabel(C)C

    move-result v1

    .line 965
    .local v1, fullwidth_char:C
    if-eqz v1, :cond_58

    .line 967
    sget-object v4, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    if-ne v4, v0, :cond_5a

    .line 969
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, retStr:Ljava/lang/String;
    :goto_39
    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/KeyMap;->mayToggleQuotaMark(C)C

    move-result v1

    .line 974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 975
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .end local v2           #retStr:Ljava/lang/String;
    :cond_58
    move v4, v7

    .line 977
    goto :goto_7

    .line 971
    :cond_5a
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getComposingStr()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_39

    .line 979
    .end local v1           #fullwidth_char:C
    .end local v2           #retStr:Ljava/lang/String;
    :cond_61
    const/16 p1, 0x27

    .line 983
    :cond_63
    const/16 v4, 0x14

    if-ne p2, v4, :cond_74

    .line 984
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->selectionFinished()Z

    move-result v4

    if-nez v4, :cond_72

    .line 985
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->changeToStateInput(Z)V

    :cond_72
    :goto_72
    move v4, v7

    .line 1030
    goto :goto_7

    .line 987
    :cond_74
    const/16 v4, 0x15

    if-eq p2, v4, :cond_7c

    const/16 v4, 0x16

    if-ne p2, v4, :cond_82

    .line 989
    :cond_7c
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    invoke-virtual {v4, p2}, Lcom/google/android/inputmethod/pinyin/ComposingView;->moveCursor(I)Z

    goto :goto_72

    .line 990
    :cond_82
    if-ne p2, v8, :cond_8c

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnterNoramlState()Z

    move-result v4

    if-nez v4, :cond_94

    :cond_8c
    const/16 v4, 0x17

    if-eq p2, v4, :cond_94

    const/16 v4, 0x3e

    if-ne p2, v4, :cond_cd

    .line 994
    :cond_94
    sget-object v4, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    if-ne v4, v0, :cond_af

    .line 995
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 996
    .local v3, str:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->tryInputRawUnicode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 997
    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1007
    .end local v3           #str:Ljava/lang/String;
    :cond_ab
    :goto_ab
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto :goto_72

    .line 999
    :cond_af
    sget-object v4, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    if-ne v4, v0, :cond_c3

    .line 1000
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getComposingStr()Ljava/lang/String;

    move-result-object v3

    .line 1001
    .restart local v3       #str:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->tryInputRawUnicode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 1002
    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_ab

    .line 1005
    .end local v3           #str:Ljava/lang/String;
    :cond_c3
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getComposingStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_ab

    .line 1008
    :cond_cd
    if-ne p2, v8, :cond_110

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnterNoramlState()Z

    move-result v4

    if-nez v4, :cond_110

    .line 1011
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isCandidatesListEmpty()Z

    move-result v4

    if-nez v4, :cond_109

    .line 1012
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getActiveCandiatePos()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentFullSent(I)Ljava/lang/String;

    move-result-object v2

    .line 1017
    .restart local v2       #retStr:Ljava/lang/String;
    :goto_eb
    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1018
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->sendKeyChar(C)V

    .line 1019
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 1020
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1021
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    .line 1022
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto/16 :goto_72

    .line 1015
    .end local v2           #retStr:Ljava/lang/String;
    :cond_109
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getComposingStr()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_eb

    .line 1023
    .end local v2           #retStr:Ljava/lang/String;
    :cond_110
    const/4 v4, 0x4

    if-ne p2, v4, :cond_11c

    .line 1024
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1025
    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->requestHideSelf(I)V

    move v4, v7

    .line 1026
    goto/16 :goto_7

    .line 1028
    :cond_11c
    invoke-direct {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processSurfaceChange(II)Z

    move-result v4

    goto/16 :goto_7
.end method

.method private processStateIdle(IILandroid/view/KeyEvent;Z)Z
    .registers 12
    .parameter "keyChar"
    .parameter "keyCode"
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "\n"

    .line 655
    const/16 v2, 0x61

    if-lt p1, v2, :cond_22

    const/16 v2, 0x7a

    if-gt p1, v2, :cond_22

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_22

    .line 656
    if-nez p4, :cond_16

    move v2, v4

    .line 712
    :goto_15
    return v2

    .line 657
    :cond_16
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    int-to-char v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->addSplChar(CZ)V

    .line 658
    const/4 v2, -0x1

    invoke-direct {p0, v2, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseAndUpdate(IZ)V

    move v2, v4

    .line 659
    goto :goto_15

    .line 660
    :cond_22
    #
    # By-pass the key event for these keys to make default key listener handle
    # it, this will get back correct Alt + Del behavior: Delete current line.
    #
    # if (keyCode == KeyEvent.KEYCODE_DEL ||
    #     keyCode == KeyEvent.KEYCODE_ALT_LEFT ||
    #     keyCode == KeyEvent.KEYCODE_ALT_RIGHT)
    const/16 v2, 0x43
    if-eq p2, v2, :returnFalse_0

    const/16 v2, 0x39
    if-eq p2, v2, :returnFalse_0

    const/16 v2, 0x3a
    if-eq p2, v2, :returnFalse_0

    goto :cond_2f

    .line 661
    :returnFalse_0
    move v2, v5

    goto :goto_15

    .line 663
    :cond_2a
    invoke-direct {p0, p2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->simulateKeyEventDownUp(I)V

    # return true;
    move v2, v4

    .line 667
    goto :goto_15

    .line 668
    :cond_2f
    const/16 v2, 0x42

    if-ne p2, v2, :cond_5b

    .line 669
    if-nez p4, :cond_37

    move v2, v4

    goto :goto_15

    .line 670
    :cond_37
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 671
    const-string v2, "\n"

    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    :goto_42
    move v2, v4

    .line 678
    goto :goto_15

    .line 673
    :cond_44
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->sendKeyChar(C)V

    .line 674
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    const-string v3, "\n"

    invoke-virtual {v2, v6}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 676
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    goto :goto_42

    .line 679
    :cond_5b
    const/16 v2, 0x39

    if-eq p2, v2, :cond_6b

    const/16 v2, 0x3a

    if-eq p2, v2, :cond_6b

    const/16 v2, 0x3b

    if-eq p2, v2, :cond_6b

    const/16 v2, 0x3c

    if-ne p2, v2, :cond_6d

    :cond_6b
    move v2, v4

    .line 683
    goto :goto_15

    .line 684
    :cond_6d
    #
    # Should try convert any key to Chinese punctuation here, not just when
    # Alt pressed.
    #
    # invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    # move-result v2

    # if-eqz v2, :cond_98

    .line 685
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/KeyMap;->getChineseLabel(C)C

    move-result v0

    .line 686
    .local v0, fullwidth_char:C
    if-eqz v0, :cond_8d

    .line 687
    if-eqz p4, :cond_8b

    .line 688
    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/KeyMap;->mayToggleQuotaMark(C)C

    move-result v0

    .line 689
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .end local v1           #result:Ljava/lang/String;
    :cond_8b
    move v2, v4

    .line 692
    goto :goto_15

    .line 694
    :cond_8d
    const/16 v2, 0x1d

    if-lt p2, v2, :cond_bd

    const/16 v2, 0x36

    if-gt p2, v2, :cond_bd

    move v2, v4

    .line 696
    goto/16 :goto_15

    .line 699
    .end local v0           #fullwidth_char:C
    :cond_98
    if-eqz p1, :cond_bd

    const/16 v2, 0x9

    if-eq p1, v2, :cond_bd

    .line 700
    if-eqz p4, :cond_af

    .line 701
    const/16 v2, 0x2c

    if-eq p1, v2, :cond_a8

    const/16 v2, 0x2e

    if-ne p1, v2, :cond_b2

    .line 702
    :cond_a8
    const-string v2, ""

    sget-object v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    invoke-direct {p0, v2, p1, v5, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;)V

    :cond_af
    :goto_af
    move v2, v4

    .line 710
    goto/16 :goto_15

    .line 704
    :cond_b2
    if-eqz p1, :cond_af

    .line 705
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 706
    .restart local v1       #result:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_af

    .end local v1           #result:Ljava/lang/String;
    :cond_bd
    move v2, v5

    .line 712
    goto/16 :goto_15
.end method

.method private processStateInput(IILandroid/view/KeyEvent;Z)Z
    .registers 16
    .parameter "keyChar"
    .parameter "keyCode"
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/16 v9, 0x13

    const/16 v8, 0x8

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 755
    :cond_83
    #
    # The keyChar calculated in processKey() ignored Alt key state, so it may
    # not be the real 'a'..'z' key, we should use getUnicodeChar() instead.
    #
    # v10 = event.getUnicodeChar();
    # if ((v10 >= 'A' && v10 <= 'Z') || (v10 >= 'a' && v10 <= 'z')
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I
    move-result v10

    const/16 v3, 0x41
    if-lt v10, v3, :cond_8b

    const/16 v3, 0x5a
    if-le v10, v3, :cond_9b

    const/16 v3, 0x61

    if-lt v10, v3, :cond_8b

    const/16 v3, 0x7a

    if-le v10, v3, :cond_9b

    :cond_8b
    # || keyChar == '\''
    const/16 v3, 0x27

    if-ne p1, v3, :cond_97

    # && !mDecInfo.charBeforeCursorIsSeparator()
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->charBeforeCursorIsSeparator()Z

    move-result v3

    if-eqz v3, :cond_9b

    :cond_97
    # || keyCode == KeyEvent.KEYCODE_DEL)
    const/16 v3, 0x43

    if-ne p2, v3, :cond_a4

    .line 758
    :cond_9b
    if-nez p4, :cond_9f

    move v3, v6

    goto :goto_53

    .line 759
    :cond_9f
    invoke-direct {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processSurfaceChange(II)Z

    move-result v3

    goto :goto_53

    .line 760
    :cond_a4
    const/16 v3, 0x2c

    if-eq p1, v3, :cond_ac

    const/16 v3, 0x2e

    if-ne p1, v3, :cond_c3

    .line 761
    :cond_ac
    if-nez p4, :cond_b0

    move v3, v6

    goto :goto_53

    .line 762
    :cond_b0
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getActiveCandiatePos()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentFullSent(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    invoke-direct {p0, v3, p1, v6, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;)V

    move v3, v6

    .line 765
    goto :goto_53

    .line 766
    :cond_c3
    if-eq p2, v9, :cond_d1

    const/16 v3, 0x14

    if-eq p2, v3, :cond_d1

    const/16 v3, 0x15

    if-eq p2, v3, :cond_d1

    const/16 v3, 0x16

    if-ne p2, v3, :cond_10c

    .line 770
    :cond_d1
    if-nez p4, :cond_d6

    move v3, v6

    goto/16 :goto_53

    .line 772
    :cond_d6
    const/16 v3, 0x15

    if-ne p2, v3, :cond_e2

    .line 773
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->activeCurseBackward()Z

    :cond_df
    :goto_df
    move v3, v6

    .line 787
    goto/16 :goto_53

    .line 774
    :cond_e2
    const/16 v3, 0x16

    if-ne p2, v3, :cond_ec

    .line 775
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->activeCurseForward()Z

    goto :goto_df

    .line 776
    :cond_ec
    if-ne p2, v9, :cond_102

    .line 779
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3, v7, v6}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageBackward(ZZ)Z

    move-result v3

    if-nez v3, :cond_df

    .line 780
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3, v7}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->enableActiveHighlight(Z)V

    .line 781
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->changeToStateComposing(Z)V

    .line 782
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateComposingText(Z)V

    goto :goto_df

    .line 784
    :cond_102
    const/16 v3, 0x14

    if-ne p2, v3, :cond_df

    .line 785
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3, v7, v6}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageForward(ZZ)Z

    goto :goto_df

    .line 788
    :cond_10c
    if-lt p2, v8, :cond_136

    const/16 v3, 0x10

    if-gt p2, v3, :cond_136

    .line 790
    if-nez p4, :cond_117

    move v3, v6

    goto/16 :goto_53

    .line 792
    :cond_117
    sub-int v0, p2, v8

    .line 793
    .restart local v0       #activePos:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getCurrentPage()I

    move-result v1

    .line 794
    .restart local v1       #currentPage:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentPageSize(I)I

    move-result v3

    if-ge v0, v3, :cond_133

    .line 795
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentPageStart(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 797
    if-ltz v0, :cond_133

    .line 798
    invoke-direct {p0, v0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseAndUpdate(IZ)V

    :cond_133
    move v3, v6

    .line 801
    goto/16 :goto_53

    .line 802
    .end local v0           #activePos:I
    .end local v1           #currentPage:I
    :cond_136
    const/16 v3, 0x42

    if-ne p2, v3, :cond_183

    .line 803
    if-nez p4, :cond_13f

    move v3, v6

    goto/16 :goto_53

    .line 804
    :cond_13f
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnterNoramlState()Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 805
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 806
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    :goto_157
    move v3, v6

    .line 817
    goto/16 :goto_53

    .line 808
    :cond_15a
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getActiveCandiatePos()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentFullSent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 811
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->sendKeyChar(C)V

    .line 812
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 813
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 814
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    .line 815
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto :goto_157

    .line 818
    :cond_183
    const/16 v3, 0x17

    if-ne p2, v3, :cond_192

    .line 819
    if-nez p4, :cond_18c

    move v3, v6

    goto/16 :goto_53

    .line 820
    :cond_18c
    invoke-direct {p0, v5, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseCandidate(IZ)V

    move v3, v6

    .line 821
    goto/16 :goto_53

    .line 822
    :cond_192
    const/16 v3, 0x3e

    if-ne p2, v3, :cond_1a1

    .line 823
    if-nez p4, :cond_19b

    move v3, v6

    goto/16 :goto_53

    .line 824
    :cond_19b
    invoke-direct {p0, v5, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseCandidate(IZ)V

    move v3, v6

    .line 825
    goto/16 :goto_53

    .line 826
    :cond_1a1
    const/4 v3, 0x4

    if-ne p2, v3, :convertPunctuation

    .line 827
    if-nez p4, :cond_1a9

    move v3, v6

    goto/16 :goto_53

    .line 828
    :cond_1a9
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 829
    invoke-virtual {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->requestHideSelf(I)V

    move v3, v6

    .line 830
    goto/16 :goto_53

    :convertPunctuation
    # .line 720
    # invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    # move-result v3

    # if-eqz v3, :cond_83

    # .line 721
    # const/16 v3, 0x27

    # invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    # move-result v4

    # invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    # move-result v4

    # if-eq v3, v4, :cond_81

    .line 722
    if-eqz p4, :cond_7f

    .line 723
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/KeyMap;->getChineseLabel(C)C

    move-result v2

    .line 724
    .local v2, fullwidth_char:C
    if-eqz v2, :cond_7f

    .line 726
    const/16 v3, 0x30

    if-lt v2, v3, :cond_54

    const/16 v3, 0x39

    if-gt v2, v3, :cond_54

    .line 727
    const/16 v3, 0x30

    if-ne v2, v3, :cond_34

    .line 728
    const/16 v2, 0x3a

    .line 730
    :cond_34
    const/16 v3, 0x31

    sub-int v0, v2, v3

    .line 731
    .local v0, activePos:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getCurrentPage()I

    move-result v1

    .line 732
    .local v1, currentPage:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentPageSize(I)I

    move-result v3

    if-ge v0, v3, :cond_52

    .line 733
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentPageStart(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 735
    if-ltz v0, :cond_52

    .line 736
    invoke-direct {p0, v0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseAndUpdate(IZ)V

    :cond_52
    move v3, v6

    .line 832
    .end local v0           #activePos:I
    .end local v1           #currentPage:I
    .end local v2           #fullwidth_char:C
    :goto_53
    return v3

    .line 741
    .restart local v2       #fullwidth_char:C
    :cond_54
    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/KeyMap;->mayToggleQuotaMark(C)C

    move-result v2

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getActiveCandiatePos()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentFullSent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 746
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .end local v2           #fullwidth_char:C
    :cond_7f
    move v3, v6

    .line 749
    goto :goto_53

    # .line 751
    # :cond_81
    # const/16 p1, 0x27

    # :cond_1b2
    # move v3, v7

    # .line 832
    # goto/16 :goto_53
.end method

.method private processStatePredict(IILandroid/view/KeyEvent;Z)Z
    .registers 15
    .parameter "keyChar"
    .parameter "keyCode"
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/16 v8, 0x13

    const/16 v4, 0x8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 868
    :cond_58
    #
    # The keyChar calculated in processKey() ignored Alt key state, so it may
    # not be the real 'a'..'z' key, we should use getUnicodeChar() instead.
    #
    # v9 = event.getUnicodeChar();
    # if ((v9 >= 'A' && v9 <= 'Z') || (v9 >= 'a' && v9 <= 'z')
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I
    move-result v9

    const/16 v3, 0x41
    if-lt v9, v3, :cond_70

    const/16 v3, 0x5a
    if-le v9, v3, :isAlphabetChar

    const/16 v3, 0x61

    if-lt v9, v3, :cond_70

    const/16 v3, 0x7a

    if-gt v9, v3, :cond_70

    .line 869
    :isAlphabetChar
    if-eqz p4, :cond_6e

    .line 870
    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->changeToStateInput(Z)V

    .line 871
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    int-to-char v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->addSplChar(CZ)V

    .line 872
    invoke-direct {p0, v7, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseAndUpdate(IZ)V

    :cond_6e
    move v3, v5

    .line 874
    goto :goto_47

    .line 875
    :cond_70
    const/16 v3, 0x2c

    if-eq p1, v3, :cond_78

    const/16 v3, 0x2e

    if-ne p1, v3, :cond_83

    .line 876
    :cond_78
    if-eqz p4, :cond_81

    .line 877
    const-string v3, ""

    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    invoke-direct {p0, v3, p1, v5, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;)V

    :cond_81
    move v3, v5

    .line 879
    goto :goto_47

    .line 880
    :cond_83
    if-eq p2, v8, :cond_91

    const/16 v3, 0x14

    if-eq p2, v3, :cond_91

    const/16 v3, 0x15

    if-eq p2, v3, :cond_91

    const/16 v3, 0x16

    if-ne p2, v3, :cond_b7

    .line 884
    :cond_91
    if-eqz p4, :cond_b5

    .line 885
    const/16 v3, 0x15

    if-ne p2, v3, :cond_9c

    .line 886
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->activeCurseBackward()Z

    .line 888
    :cond_9c
    const/16 v3, 0x16

    if-ne p2, v3, :cond_a5

    .line 889
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->activeCurseForward()Z

    .line 891
    :cond_a5
    if-ne p2, v8, :cond_ac

    .line 892
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3, v6, v5}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageBackward(ZZ)Z

    .line 894
    :cond_ac
    const/16 v3, 0x14

    if-ne p2, v3, :cond_b5

    .line 895
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3, v6, v5}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageForward(ZZ)Z

    :cond_b5
    move v3, v5

    .line 898
    goto :goto_47

    .line 899
    :cond_b7
    # else if (keyCode == KeyEvent.KEYCODE_ALT_LEFT ||
    #          keyCode == KeyEvent.KEYCODE_ALT_RIGHT)
    const/16 v3, 0x39
    if-eq p2, v3, :returnFalse_1

    const/16 v3, 0x3a
    if-eq p2, v3, :returnFalse_1

    goto :checkDelKey_0

    :returnFalse_1
    move v3, v6
    goto :goto_47

    # else if (keyCode == KeyEvent.KEYCODE_DEL)
    :checkDelKey_0
    const/16 v3, 0x43

    if-ne p2, v3, :cond_c2

    .line 900
    # if (!realAction)
    # if-eqz p4, :cond_c0

    # if (event.isAltPressed())
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z
    move-result v3
    if-nez v3, :returnFalse_1

    .line 901
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    :cond_c0
    # return true;
    move v3, v5

    .line 903
    goto :goto_47

    .line 904
    :cond_c2
    const/4 v3, 0x4

    if-ne p2, v3, :cond_d0

    .line 905
    if-eqz p4, :cond_cd

    .line 906
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 907
    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->requestHideSelf(I)V

    :cond_cd
    move v3, v5

    .line 909
    goto/16 :goto_47

    .line 910
    :cond_d0
    if-lt p2, v4, :cond_f7

    const/16 v3, 0x10

    if-gt p2, v3, :cond_f7

    .line 912
    if-eqz p4, :cond_f4

    .line 913
    sub-int v0, p2, v4

    .line 914
    .restart local v0       #activePos:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getCurrentPage()I

    move-result v1

    .line 915
    .restart local v1       #currentPage:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentPageSize(I)I

    move-result v3

    if-ge v0, v3, :cond_f4

    .line 916
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentPageStart(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 918
    if-ltz v0, :cond_f4

    .line 919
    invoke-direct {p0, v0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseAndUpdate(IZ)V

    .end local v0           #activePos:I
    .end local v1           #currentPage:I
    :cond_f4
    move v3, v5

    .line 923
    goto/16 :goto_47

    .line 924
    :cond_f7
    const/16 v3, 0x42

    if-ne p2, v3, :cond_125

    .line 925
    if-eqz p4, :cond_10b

    .line 926
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 927
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 934
    :goto_108
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    :cond_10b
    move v3, v5

    .line 936
    goto/16 :goto_47

    .line 929
    :cond_10e
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->sendKeyChar(C)V

    .line 930
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 931
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 932
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    goto :goto_108

    .line 937
    :cond_125
    const/16 v3, 0x17

    if-ne p2, v3, :cond_131

    .line 938
    if-eqz p4, :cond_12e

    .line 939
    invoke-direct {p0, v7, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseCandidate(IZ)V

    :cond_12e
    move v3, v5

    .line 941
    goto/16 :goto_47

    .line 942
    :cond_131
    const/16 v3, 0x3e

    if-ne p2, v3, :convertPunctuation

    .line 943
    if-eqz p4, :cond_13f

    .line 944
    const-string v3, " "

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 945
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    :cond_13f
    move v3, v5

    .line 947
    goto/16 :goto_47

    :convertPunctuation
    # .line 838
    # invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    # move-result v3

    # if-eqz v3, :cond_58

    .line 839
    if-eqz p4, :cond_56

    .line 840
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/KeyMap;->getChineseLabel(C)C

    move-result v2

    .line 841
    .local v2, fullwidth_char:C
    if-eqz v2, :cond_56

    .line 843
    const/16 v3, 0x30

    if-lt v2, v3, :cond_48

    const/16 v3, 0x39

    if-gt v2, v3, :cond_48

    .line 844
    const/16 v3, 0x30

    if-ne v2, v3, :cond_28

    .line 845
    const/16 v2, 0x3a

    .line 847
    :cond_28
    const/16 v3, 0x31

    sub-int v0, v2, v3

    .line 848
    .local v0, activePos:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getCurrentPage()I

    move-result v1

    .line 849
    .local v1, currentPage:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentPageSize(I)I

    move-result v3

    if-ge v0, v3, :cond_46

    .line 850
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentPageStart(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 852
    if-ltz v0, :cond_46

    .line 853
    invoke-direct {p0, v0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseAndUpdate(IZ)V

    :cond_46
    move v3, v5

    .line 949
    .end local v0           #activePos:I
    .end local v1           #currentPage:I
    .end local v2           #fullwidth_char:C
    :goto_47
    return v3

    .line 858
    .restart local v2       #fullwidth_char:C
    :cond_48
    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/KeyMap;->mayToggleQuotaMark(C)C

    move-result v2

    .line 859
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 860
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .end local v2           #fullwidth_char:C
    :cond_56
    move v3, v5

    .line 863
    goto :goto_47

    # :cond_142
    # move v3, v6

    # .line 949
    # goto/16 :goto_47
.end method

.method private processSurfaceChange(II)Z
    .registers 9
    .parameter "keyChar"
    .parameter "keyCode"

    .prologue
    const/16 v5, 0x43

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1077
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isSplStrFull()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eq v5, p2, :cond_11

    move v0, v4

    .line 1091
    :goto_10
    return v0

    .line 1081
    :cond_11
    const/16 v0, 0x61

    if-lt p1, v0, :cond_19

    const/16 v0, 0x7a

    if-le p1, v0, :cond_37

    :cond_19
    const/16 v0, 0x27

    if-ne p1, v0, :cond_25

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->charBeforeCursorIsSeparator()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_25
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2d

    const/16 v0, 0x39

    if-le p1, v0, :cond_31

    :cond_2d
    const/16 v0, 0x20

    if-ne p1, v0, :cond_42

    :cond_31
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v0, v1, :cond_42

    .line 1085
    :cond_37
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->addSplChar(CZ)V

    .line 1086
    invoke-direct {p0, v3, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseAndUpdate(IZ)V

    :cond_40
    :goto_40
    move v0, v4

    .line 1091
    goto :goto_10

    .line 1087
    :cond_42
    if-ne p2, v5, :cond_40

    .line 1088
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->prepareDeleteBeforeCursor()V

    .line 1089
    invoke-direct {p0, v3, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->chooseAndUpdate(IZ)V

    goto :goto_40
.end method

.method private resetToIdleState(Z)V
    .registers 4
    .parameter "resetInlineText"

    .prologue
    .line 1174
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v0, v1, :cond_7

    .line 1188
    :cond_6
    :goto_6
    return-void

    .line 1176
    :cond_7
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 1177
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->reset()V

    .line 1179
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->reset()V

    .line 1180
    :cond_19
    if-eqz p1, :cond_20

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1181
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetCandidateWindow()V

    .line 1183
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1184
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1185
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v0, :cond_6

    .line 1186
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    goto :goto_6
.end method

.method private showCandidateWindow(Z)V
    .registers 9
    .parameter "showComposingView"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1545
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1546
    const-string v0, "PinyinIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Candidates window is shown. Parent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_25
    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesViewShown(Z)V

    .line 1552
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->requestLayout()V

    .line 1554
    :cond_31
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    if-nez v0, :cond_39

    .line 1555
    invoke-direct {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1572
    :goto_38
    return-void

    .line 1559
    :cond_39
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateComposingText(Z)V

    .line 1560
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    sget-object v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v2, v3, :cond_68

    sget-object v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v2, v3, :cond_68

    move v2, v6

    :goto_4d
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->needSpellCorrection()Z

    move-result v3

    if-eqz v3, :cond_6a

    move v3, v5

    :goto_54
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->showCandidates(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;ZI)V

    .line 1567
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v0, v1, :cond_62

    .line 1568
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v0, v5}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->setCorrectionIndex(I)V

    .line 1571
    :cond_62
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindowTimer:Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->postShowFloatingWindow()V

    goto :goto_38

    :cond_68
    move v2, v4

    .line 1560
    goto :goto_4d

    :cond_6a
    move v3, v4

    goto :goto_54
.end method

.method private simulateKeyEventDownUp(I)V
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1115
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_7

    .line 1119
    :goto_6
    return-void

    .line 1117
    :cond_7
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1118
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_6
.end method

.method private submitLatinPrediction()V
    .registers 5

    .prologue
    .line 1786
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1788
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_7

    .line 1803
    :goto_6
    return-void

    .line 1792
    :cond_7
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->needSpellCorrection()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1793
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCorrection()Ljava/lang/String;

    move-result-object v0

    .line 1794
    .local v0, correction:Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 1795
    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1798
    .end local v0           #correction:Ljava/lang/String;
    :cond_19
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1799
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v2

    sget-object v3, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    if-ne v2, v3, :cond_2d

    .line 1800
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    sget-object v3, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    .line 1802
    :cond_2d
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto :goto_6
.end method

.method private switchInputMode(I)V
    .registers 3
    .parameter "userKey"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->switchModeForUserKey(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateIcon(I)V

    .line 1936
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateCandidateFont()V

    .line 1937
    return-void
.end method

.method private switchToT9()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1398
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    if-nez v1, :cond_c

    .line 1399
    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/dev/IME;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    .line 1401
    :cond_c
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->init()V

    .line 1402
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->submitLatinPrediction()V

    .line 1403
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1404
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->guessBestT9Mode()I

    move-result v0

    .line 1405
    .local v0, mode:I
    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesViewShown(Z)V

    .line 1406
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindowTimer:Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->cancelShowing()V

    .line 1407
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setInputView(Landroid/view/View;)V

    .line 1408
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCandidatesView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesView(Landroid/view/View;)V

    .line 1409
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateInputViewShown()V

    .line 1410
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    .line 1411
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1, v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchTo(I)V

    .line 1412
    return-void
.end method

.method private tryInputRawUnicode(Ljava/lang/String;)Z
    .registers 13
    .parameter "str"

    .prologue
    .line 1034
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x7

    if-le v9, v10, :cond_c5

    .line 1035
    const/4 v9, 0x0

    const/4 v10, 0x7

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "unicode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_64

    .line 1037
    const/4 v9, 0x7

    :try_start_16
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, digitStr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1039
    .local v7, startPos:I
    const/16 v5, 0xa

    .line 1040
    .local v5, radix:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_39

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_39

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x78

    if-ne v9, v10, :cond_39

    .line 1042
    const/4 v7, 0x2

    .line 1043
    const/16 v5, 0x10

    .line 1045
    :cond_39
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1046
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 1047
    .local v8, unicode:I
    if-lez v8, :cond_5e

    .line 1048
    const v9, 0xffff

    and-int/2addr v9, v8

    int-to-char v3, v9

    .line 1049
    .local v3, low:C
    const/high16 v9, -0x1

    and-int/2addr v9, v8

    shr-int/lit8 v9, v9, 0x10

    int-to-char v2, v9

    .line 1050
    .local v2, high:C
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1051
    if-eqz v2, :cond_5e

    .line 1052
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_5e} :catch_60

    .line 1055
    .end local v2           #high:C
    .end local v3           #low:C
    :cond_5e
    const/4 v9, 0x1

    .line 1073
    .end local v0           #digitStr:Ljava/lang/String;
    .end local v5           #radix:I
    .end local v7           #startPos:I
    .end local v8           #unicode:I
    :goto_5f
    return v9

    .line 1056
    :catch_60
    move-exception v9

    move-object v1, v9

    .line 1057
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    goto :goto_5f

    .line 1059
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x7

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "unicode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_c5

    .line 1061
    const-string v6, ""

    .line 1062
    .local v6, resultStr:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, pos:I
    :goto_7d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x7

    sub-int/2addr v9, v10

    if-ge v4, v9, :cond_bc

    .line 1063
    if-lez v4, :cond_9a

    .line 1064
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1067
    :cond_9a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1062
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 1069
    :cond_bc
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1070
    const/4 v9, 0x1

    goto :goto_5f

    .line 1073
    .end local v4           #pos:I
    .end local v6           #resultStr:Ljava/lang/String;
    :cond_c5
    const/4 v9, 0x0

    goto :goto_5f
.end method

.method private updateCandidateFont()V
    .registers 3

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    if-nez v0, :cond_5

    .line 1932
    :cond_4
    :goto_4
    return-void

    .line 1927
    :cond_5
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnglishWithSkb()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1928
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->setCandidateMode(I)V

    goto :goto_4

    .line 1929
    :cond_14
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1930
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->setCandidateMode(I)V

    goto :goto_4
.end method

.method private updateComposingText(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    .line 1148
    if-nez p1, :cond_e

    .line 1149
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/ComposingView;->setVisibility(I)V

    .line 1156
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->invalidate()V

    .line 1157
    return-void

    .line 1151
    :cond_e
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1152
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/ComposingView;->setDecodingInfo(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;)V

    .line 1153
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/ComposingView;->setVisibility(I)V

    goto :goto_8
.end method

.method private updateIcon(I)V
    .registers 2
    .parameter "iconId"

    .prologue
    .line 1620
    if-lez p1, :cond_6

    .line 1621
    invoke-virtual {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->showStatusIcon(I)V

    .line 1625
    :goto_5
    return-void

    .line 1623
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->hideStatusIcon()V

    goto :goto_5
.end method

.method private updateLatinPredictCandidates()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 522
    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 524
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 525
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions(Lcom/android/inputmethod/latin/WordComposer;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 526
    .local v0, suggests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/inputmethod/pinyin/CandidateFormatter;->formatCandidates(Ljava/util/List;Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->prepareLatinPredicts(Ljava/util/List;)V

    .line 528
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->showCandidateWindow(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getTypedWord()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 533
    .end local v0           #suggests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_35
    return-void

    .line 531
    :cond_36
    invoke-direct {p0, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto :goto_35
.end method

.method private usePredictionChinese()Z
    .registers 4

    .prologue
    .line 2240
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 2241
    .local v0, v:I
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getPredictionChinese()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v1, v2, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private usePredictionEnglish()Z
    .registers 4

    .prologue
    .line 2251
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 2252
    .local v0, v:I
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getPredictionEnglish()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v1, v2, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method


# virtual methods
.method protected commitResultText(Ljava/lang/String;)V
    .registers 7
    .parameter "resultText"

    .prologue
    .line 1122
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v3, p1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 1123
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1124
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v3, :cond_13

    .line 1125
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    .line 1127
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1128
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1d

    .line 1129
    const/4 v3, 0x1

    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1131
    :cond_1d
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    if-eqz v3, :cond_2c

    .line 1132
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/ComposingView;->setVisibility(I)V

    .line 1133
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/ComposingView;->invalidate()V

    .line 1137
    :cond_2c
    const/16 v1, 0x8

    .line 1138
    .local v1, maxPredictLen:I
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1139
    .local v2, text:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 1140
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->isTraditionalEnabled()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1141
    invoke-static {p0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->convertTcToSc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    :cond_4b
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->trainPredicts(Ljava/lang/CharSequence;)V

    .line 1145
    :cond_50
    return-void
.end method

.method public getAutoDictionary()Lcom/android/inputmethod/latin/AutoDictionary;
    .registers 2

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->getAutoDictionary()Lcom/android/inputmethod/latin/AutoDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryDictionary()Lcom/android/inputmethod/latin/BinaryDictionary;
    .registers 2

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->getBinaryDictionary()Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCandidatesView()Lcom/google/android/inputmethod/pinyin/CandidatesContainer;
    .registers 2

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    return-object v0
.end method

.method public getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;
    .registers 2

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    return-object v0
.end method

.method public getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;
    .registers 2

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;
    .registers 2

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getDecodingInfo()Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;
    .registers 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    return-object v0
.end method

.method public getUserDictionary()Lcom/android/inputmethod/latin/UserDictionary;
    .registers 2

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->getUserDictionary()Lcom/android/inputmethod/latin/UserDictionary;

    move-result-object v0

    return-object v0
.end method

.method public guessBestT9Mode()I
    .registers 5

    .prologue
    .line 1415
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getLastMode()I

    move-result v1

    .line 1416
    .local v1, mode:I
    if-gez v1, :cond_9

    .line 1417
    const/4 v3, -0x1

    sub-int v1, v3, v1

    .line 1420
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1421
    .local v0, editorInfo:Landroid/view/inputmethod/EditorInfo;
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_34

    .line 1439
    :cond_14
    :goto_14
    const/16 v3, 0x100

    if-ne v1, v3, :cond_32

    const/4 v3, 0x0

    :goto_19
    return v3

    .line 1425
    :pswitch_1a
    const/4 v1, 0x3

    .line 1426
    goto :goto_14

    .line 1428
    :pswitch_1c
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v3, 0xff0

    .line 1429
    .local v2, v:I
    const/16 v3, 0x20

    if-eq v2, v3, :cond_30

    const/16 v3, 0x80

    if-eq v2, v3, :cond_30

    const/16 v3, 0x90

    if-eq v2, v3, :cond_30

    const/16 v3, 0x10

    if-ne v2, v3, :cond_14

    .line 1433
    :cond_30
    const/4 v1, 0x2

    .line 1434
    goto :goto_14

    .end local v2           #v:I
    :cond_32
    move v3, v1

    .line 1439
    goto :goto_19

    .line 1421
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public isTraditionalEnabled()Z
    .registers 3

    .prologue
    .line 1954
    :try_start_0
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getTradition()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/IDecoder;->getDecoderMode()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_1a

    move-result v0

    if-nez v0, :cond_1b

    .line 1956
    const/4 v0, 0x1

    .line 1960
    :goto_19
    return v0

    .line 1958
    :catch_1a
    move-exception v0

    .line 1960
    :cond_1b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public loadBiasPereferenceForSkb(I)Ljava/lang/String;
    .registers 6
    .parameter "skbId"

    .prologue
    const/4 v3, 0x0

    .line 1906
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->doKeyRegionAdaptation()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v3

    .line 1909
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbPref:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public needAutoCapitalization()Z
    .registers 4

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 248
    .local v0, v:I
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getAutoCapitalization()Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v1, 0x80

    if-eq v0, v1, :cond_24

    const/16 v1, 0x90

    if-eq v0, v1, :cond_24

    const/16 v1, 0x20

    if-eq v0, v1, :cond_24

    const/16 v1, 0x10

    if-eq v0, v1, :cond_24

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    sget-object v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v1, v2, :cond_24

    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public onBindInput()V
    .registers 3

    .prologue
    .line 1806
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onBindInput()V

    .line 1807
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1808
    const-string v0, "PinyinIME"

    const-string v1, "onBindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_12
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 3
    .parameter "outInsets"

    .prologue
    .line 1307
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1308
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1309
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1311
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const-string v3, "PinyinIME"

    .line 339
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->submitLatinPrediction()V

    .line 340
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v0

    .line 341
    .local v0, env:Lcom/google/android/inputmethod/pinyin/Environment;
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 342
    const-string v1, "PinyinIME"

    const-string v1, "onConfigurationChanged"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v1, "PinyinIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--last config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v1, "PinyinIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---new config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_54
    invoke-virtual {v0, p1, p0}, Lcom/google/android/inputmethod/pinyin/Environment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 353
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v1, :cond_60

    .line 354
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->dismissPopups()V

    .line 356
    :cond_60
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesBalloon:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    if-eqz v1, :cond_69

    .line 357
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesBalloon:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->dismiss()V

    .line 359
    :cond_69
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_72

    .line 360
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 365
    :cond_72
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    if-eqz v1, :cond_7b

    .line 366
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1, p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 369
    :cond_7b
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_83

    .line 370
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->switchBackToQwerty()V

    .line 373
    :cond_83
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 374
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 375
    return-void
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "version"

    .line 272
    sput-object p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLastInstance:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    .line 273
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    .line 274
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 275
    const-string v2, "PinyinIME"

    const-string v3, "onCreate."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1b
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/Settings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/Settings;

    .line 282
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->startDecoderService()Z

    .line 283
    new-instance v2, Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;

    invoke-direct {v2}, Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;-><init>()V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImEn:Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;

    .line 285
    new-instance v2, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;Lcom/android/inputmethod/latin/WordComposer;)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    .line 286
    new-instance v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;

    invoke-direct {v2, p0, p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;Lcom/google/android/inputmethod/pinyin/PinyinIME;)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mChoiceNotifier:Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;

    .line 287
    new-instance v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;

    invoke-direct {v2, p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;Z)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mGestureListenerSkb:Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;

    .line 288
    new-instance v2, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;

    invoke-direct {v2, p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;Z)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mGestureListenerCandidates:Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;

    .line 289
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mGestureListenerSkb:Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;

    invoke-direct {v2, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mGestureDetectorSkb:Landroid/view/GestureDetector;

    .line 290
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mGestureListenerCandidates:Lcom/google/android/inputmethod/pinyin/PinyinIME$OnGestureListener;

    invoke-direct {v2, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mGestureDetectorCandidates:Landroid/view/GestureDetector;

    .line 293
    new-instance v2, Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/LatinIME;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    .line 294
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    const-string v3, "en"

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/google/android/inputmethod/pinyin/Environment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 304
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/Environment;->doKeyRegionAdaptation()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 305
    const-string v2, "skbBiasPreference"

    invoke-virtual {p0, v2, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbPref:Landroid/content/SharedPreferences;

    .line 306
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbPref:Landroid/content/SharedPreferences;

    const-string v3, "version"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 309
    .local v1, version:I
    if-eq v6, v1, :cond_cc

    .line 311
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 312
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    const-string v2, "version"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #version:I
    :cond_cc
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1315
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1316
    const-string v1, "PinyinIME"

    const-string v2, "onCreateCandidatesView."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1321
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030003

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingContainer:Landroid/widget/LinearLayout;

    .line 1325
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/ComposingView;

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mComposingView:Lcom/google/android/inputmethod/pinyin/ComposingView;

    .line 1327
    const v1, 0x7f030002

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    .line 1329
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateCandidateFont()V

    .line 1332
    new-instance v1, Lcom/google/android/inputmethod/pinyin/BalloonHint;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-direct {v1, p0, v2, v5, v5}, Lcom/google/android/inputmethod/pinyin/BalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesBalloon:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    .line 1334
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesBalloon:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1336
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mChoiceNotifier:Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesBalloon:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mGestureDetectorCandidates:Landroid/view/GestureDetector;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->initialize(Lcom/google/android/inputmethod/pinyin/CandidateViewListener;Lcom/google/android/inputmethod/pinyin/BalloonHint;Landroid/view/GestureDetector;)V

    .line 1340
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1341
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindowTimer:Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->cancelShowing()V

    .line 1343
    :cond_6d
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindow:Landroid/widget/PopupWindow;

    .line 1344
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1345
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1346
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1347
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1349
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesViewShown(Z)V

    .line 1351
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    if-nez v1, :cond_9a

    .line 1352
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    .line 1355
    :goto_99
    return-object v1

    :cond_9a
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    goto :goto_99
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 4

    .prologue
    .line 1629
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1630
    const-string v1, "PinyinIME"

    const-string v2, "onCreateInputView."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1633
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    .line 1635
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1, p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->setService(Landroid/inputmethodservice/InputMethodService;)V

    .line 1636
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->setInputModeSwitcher(Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;)V

    .line 1637
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mGestureDetectorSkb:Landroid/view/GestureDetector;

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 1639
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    if-nez v1, :cond_3d

    .line 1640
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 1643
    :goto_3c
    return-object v1

    :cond_3d
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    goto :goto_3c
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 326
    const-string v0, "PinyinIME"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_f
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecoderServiceConnection:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->unbindService(Landroid/content/ServiceConnection;)V

    .line 330
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->writeBack()V

    .line 331
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->releaseInstance()V

    .line 332
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/SkbPool;->getInstance()Lcom/google/android/inputmethod/pinyin/SkbPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbPool;->onCachedOut()V

    .line 333
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLastInstance:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    .line 334
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 335
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 4
    .parameter "completions"

    .prologue
    .line 1766
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1783
    :cond_6
    :goto_6
    return-void

    .line 1767
    :cond_7
    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    .line 1768
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1770
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseText()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_IDLE:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-eq v0, v1, :cond_2c

    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v0, v1, :cond_6

    .line 1773
    :cond_2c
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 1774
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->submitLatinPrediction()V

    .line 1775
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1776
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1777
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    .line 1779
    :cond_46
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_APP_COMPLETION:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    .line 1780
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$500(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1781
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->showCandidateWindow(Z)V

    goto :goto_6
.end method

.method public onFinishCandidatesView(Z)V
    .registers 4
    .parameter "finishingInput"

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1736
    const-string v0, "PinyinIME"

    const-string v1, "onFinishCandidateView."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1739
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    .line 1740
    return-void
.end method

.method public onFinishInput()V
    .registers 3

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1723
    const-string v0, "PinyinIME"

    const-string v1, "onFinishInput."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1726
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->writeBack()V

    .line 1727
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1728
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    if-nez v0, :cond_22

    .line 1729
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onFinishInput()V

    .line 1731
    :cond_22
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 6
    .parameter "finishingInput"

    .prologue
    const/4 v2, 0x0

    const-class v3, Lcom/google/android/inputmethod/pinyin/PinyinIME;

    .line 1701
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1702
    const-string v0, "PinyinIME"

    const-string v1, "onFinishInputView."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_12
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1705
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1706
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    if-nez v0, :cond_24

    .line 1707
    const-class v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;

    monitor-enter v3

    .line 1708
    :try_start_1f
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsFinishingInputViewRecursively:Z

    if-eqz v1, :cond_25

    .line 1709
    monitor-exit v0

    .line 1718
    :cond_24
    :goto_24
    return-void

    .line 1711
    :cond_25
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsFinishingInputViewRecursively:Z

    .line 1712
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_39

    .line 1713
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onFinishInputView(Z)V

    .line 1714
    const-class v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;

    monitor-enter v3

    .line 1715
    const/4 v1, 0x0

    :try_start_32
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsFinishingInputViewRecursively:Z

    .line 1716
    monitor-exit v0

    goto :goto_24

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_36

    throw v1

    .line 1712
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 379
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    if-nez v1, :cond_f

    .line 380
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 381
    .local v0, processed:Z
    if-eqz v0, :cond_f

    move v1, v2

    .line 388
    .end local v0           #processed:Z
    :goto_e
    return v1

    .line 385
    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v2

    :goto_16
    invoke-direct {p0, p2, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v2

    .line 386
    goto :goto_e

    .line 385
    :cond_1e
    const/4 v1, 0x0

    goto :goto_16

    .line 388
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_e
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 393
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    if-nez v1, :cond_f

    .line 394
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 395
    .local v0, processed:Z
    if-eqz v0, :cond_f

    move v1, v2

    .line 402
    .end local v0           #processed:Z
    :goto_e
    return v1

    .line 399
    :cond_f
    invoke-direct {p0, p2, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    .line 400
    goto :goto_e

    .line 402
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_e
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1649
    const-string v0, "PinyinIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartInput  ccontentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Restarting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_34
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestInputWithHkb(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateIcon(I)V

    .line 1654
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1655
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1656
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->setDoubleQuoteOpen()V

    .line 1657
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->setSingleQuoteOpen()V

    .line 1658
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    if-nez v0, :cond_56

    .line 1659
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1661
    :cond_56
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 9
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v5, 0x0

    .line 1665
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1666
    const-string v2, "PinyinIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartInputView  contentType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Restarting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_35
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v2, p1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestInputWithSkb(Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateIcon(I)V

    .line 1672
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v2, 0xff0

    .line 1673
    .local v1, v:I
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->resetShiftState()V

    .line 1674
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1675
    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1676
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    .line 1677
    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesViewShown(Z)V

    .line 1678
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1679
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateCandidateFont()V

    .line 1681
    iget-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    if-nez v2, :cond_6f

    .line 1682
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1683
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setInputView(Landroid/view/View;)V

    .line 1697
    :cond_6e
    :goto_6e
    return-void

    .line 1685
    :cond_6f
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getLastMode()I

    move-result v0

    .line 1686
    .local v0, mode:I
    if-ltz v0, :cond_88

    .line 1688
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getLastMode()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_84

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6e

    .line 1691
    :cond_84
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->switchToT9()V

    goto :goto_6e

    .line 1694
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->switchBackToQwerty()V

    goto :goto_6e
.end method

.method public onUnbindInput()V
    .registers 3

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1814
    const-string v0, "PinyinIME"

    const-string v1, "onUnbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_f
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 1817
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 10
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v1, -0x1

    .line 1745
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1747
    if-ne p5, v1, :cond_20

    if-ne p6, v1, :cond_20

    .line 1748
    sget-object v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v1, v2, :cond_20

    .line 1749
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1750
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1751
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateLatinPredictCandidates()V

    .line 1752
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    .line 1755
    :cond_20
    if-ne p3, p6, :cond_24

    if-eq p4, p6, :cond_2a

    .line 1756
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1758
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_2b

    .line 1763
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2a
    :goto_2a
    return-void

    .line 1761
    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2b
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_2a
.end method

.method public requestHideSelf(I)V
    .registers 4
    .parameter "flags"

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1848
    const-string v0, "PinyinIME"

    const-string v1, "DimissSoftInput."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_f
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->dismissCandidateWindow()V

    .line 1851
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1852
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->dismissPopups()V

    .line 1854
    :cond_23
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 1855
    return-void
.end method

.method public resetCandidateWindow()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const-string v3, "PinyinIME"

    .line 1592
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebug()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1593
    const-string v1, "PinyinIME"

    const-string v1, "Candidates window is to be reset"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_12
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    if-nez v1, :cond_17

    .line 1617
    :cond_16
    :goto_16
    return-void

    .line 1597
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mFloatingWindowTimer:Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->cancelShowing()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_42

    .line 1602
    :goto_1c
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1603
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->toggleCandidateMode(Z)V

    .line 1606
    :cond_2d
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->resetCandidates()V

    .line 1608
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    if-eqz v1, :cond_16

    .line 1609
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->hasHardKeyboard()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1610
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->dismissCandidateWindow()V

    goto :goto_16

    .line 1598
    :catch_42
    move-exception v1

    move-object v0, v1

    .line 1599
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PinyinIME"

    const-string v1, "Fail to show the PopupWindow."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1612
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4c
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1613
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->showCandidateWindow(Z)V

    goto :goto_16
.end method

.method public responseSoftKeyEvent(Lcom/google/android/inputmethod/pinyin/SoftKey;)V
    .registers 20
    .parameter "sKey"

    .prologue
    .line 1443
    if-nez p1, :cond_3

    .line 1542
    :cond_2
    :goto_2
    return-void

    .line 1445
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v15

    .line 1446
    .local v15, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v15, :cond_2

    .line 1448
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyCode()I

    move-result v9

    .line 1449
    .local v9, keyCode:I
    const/4 v3, 0x0

    .line 1452
    .local v3, eUp:Landroid/view/KeyEvent;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/inputmethod/pinyin/SoftKey;->isKeyCodeKey()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1453
    new-instance v3, Landroid/view/KeyEvent;

    .end local v3           #eUp:Landroid/view/KeyEvent;
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 1455
    .restart local v3       #eUp:Landroid/view/KeyEvent;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processFunctionKeys(Landroid/view/KeyEvent;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1458
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/inputmethod/pinyin/SoftKey;->isUserDefKey()Z

    move-result v4

    if-eqz v4, :cond_41

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    move v4, v0

    const/16 v5, -0xc

    if-ne v4, v5, :cond_41

    .line 1459
    invoke-direct/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->switchToT9()V

    goto :goto_2

    .line 1463
    :cond_41
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/inputmethod/pinyin/SoftKey;->isUserDefKey()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object v4, v0

    sget-object v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v4, v5, :cond_5d

    const/4 v4, -0x1

    if-eq v9, v4, :cond_5d

    .line 1466
    invoke-direct/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->submitLatinPrediction()V

    .line 1467
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1469
    :cond_5d
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->switchInputMode(I)V

    .line 1473
    :try_start_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isStrokeWithSkb()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->setDecoderMode(I)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_7b} :catch_ac

    .line 1480
    :cond_7b
    :goto_7b
    const/4 v4, -0x1

    if-ne v9, v4, :cond_ae

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1482
    invoke-direct/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateLatinPredictCandidates()V

    .line 1486
    :goto_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    goto/16 :goto_2

    .line 1475
    :cond_93
    :try_start_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->setDecoderMode(I)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_ab} :catch_ac

    goto :goto_7b

    .line 1478
    :catch_ac
    move-exception v4

    goto :goto_7b

    .line 1484
    :cond_ae
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto :goto_89

    .line 1488
    :cond_b6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/inputmethod/pinyin/SoftKey;->isKeyCodeKey()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 1489
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1536
    :cond_c3
    :goto_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->isCurrentSkbSticky()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestBackToPreviousSkb()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateIcon(I)V

    .line 1538
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    goto/16 :goto_2

    .line 1490
    :cond_ee
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/inputmethod/pinyin/SoftKey;->isUniStrKey()Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 1491
    const/16 v16, 0x0

    .line 1492
    .local v16, kUsed:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v17

    .line 1493
    .local v17, keyLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v4

    if-eqz v4, :cond_141

    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object v5, v0

    if-eq v4, v5, :cond_117

    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object v5, v0

    if-ne v4, v5, :cond_141

    .line 1496
    :cond_117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->length()I

    move-result v4

    if-lez v4, :cond_141

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_141

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_141

    .line 1498
    const/16 v4, 0x27

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->processSurfaceChange(II)Z

    .line 1499
    const/16 v16, 0x1

    .line 1502
    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object v4, v0

    sget-object v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_LATIN_PREDICT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v4, v5, :cond_154

    .line 1503
    invoke-direct/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->submitLatinPrediction()V

    .line 1504
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1506
    :cond_154
    if-nez v16, :cond_c3

    .line 1507
    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object v5, v0

    if-ne v4, v5, :cond_19a

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getActiveCandiatePos()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCurrentFullSent(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1515
    :cond_177
    :goto_177
    const-string v4, "\u201c"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->setDoubleQuoteClosed()V

    .line 1529
    :cond_18a
    :goto_18a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    .line 1530
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    goto/16 :goto_c3

    .line 1511
    :cond_19a
    sget-object v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mImeState:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-object v5, v0

    if-ne v4, v5, :cond_177

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getComposingStr()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_177

    .line 1518
    :cond_1b3
    const-string v4, "\u201d"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c7

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->setDoubleQuoteOpen()V

    goto :goto_18a

    .line 1521
    :cond_1c7
    const-string v4, "\u2018"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->setSingleQuoteClosed()V

    goto :goto_18a

    .line 1524
    :cond_1db
    const-string v4, "\u2019"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->setSingleQuoteOpen()V

    goto :goto_18a
.end method

.method public saveBiasPereferenceForSkb(ILjava/lang/String;)Z
    .registers 6
    .parameter "skbId"
    .parameter "prefStr"

    .prologue
    .line 1913
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->doKeyRegionAdaptation()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbPref:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_e

    if-nez p2, :cond_10

    .line 1915
    :cond_e
    const/4 v1, 0x0

    .line 1919
    :goto_f
    return v1

    .line 1917
    :cond_10
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1918
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1919
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_f
.end method

.method public setFaultTolerance(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->setFaultTolerance(Z)V

    .line 1950
    return-void
.end method

.method public showOptionsMenu()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1858
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1859
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1860
    const v5, 0x7f020001

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1861
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1862
    const v5, 0x7f0a000a

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1863
    .local v2, itemSettings:Ljava/lang/CharSequence;
    const v5, 0x7f0a000b

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1864
    .local v1, itemInputMethod:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v1, v5, v7

    new-instance v6, Lcom/google/android/inputmethod/pinyin/PinyinIME$2;

    invoke-direct {v6, p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$2;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1883
    const v5, 0x7f0a0009

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1884
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1885
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1886
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1887
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    if-eqz v5, :cond_6b

    .line 1888
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1892
    :goto_59
    const/16 v5, 0x3eb

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1893
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1894
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1895
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1896
    return-void

    .line 1890
    :cond_6b
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_59
.end method

.method public startDecoderService()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1286
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 1287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1288
    .local v0, serviceIntent:Landroid/content/Intent;
    const-class v1, Lcom/google/android/inputmethod/pinyin/DecoderService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1290
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecoderServiceConnection:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;

    if-nez v1, :cond_1e

    .line 1291
    new-instance v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecoderServiceConnection:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;

    .line 1295
    :cond_1e
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecoderServiceConnection:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v2

    .line 1302
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :goto_27
    return v1

    .line 1299
    .restart local v0       #serviceIntent:Landroid/content/Intent;
    :cond_28
    const/4 v1, 0x0

    goto :goto_27

    .end local v0           #serviceIntent:Landroid/content/Intent;
    :cond_2a
    move v1, v2

    .line 1302
    goto :goto_27
.end method

.method public switchBackToQwerty()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1367
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1368
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->hasHardKeyboard()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1369
    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesViewShown(Z)V

    .line 1370
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mCandidatesContainer:Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setCandidatesView(Landroid/view/View;)V

    .line 1371
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setInputView(Landroid/view/View;)V

    .line 1373
    :cond_1c
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    if-eqz v1, :cond_25

    .line 1374
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mNewIMEImpl:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->release()V

    .line 1376
    :cond_25
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1377
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateInputViewShown()V

    .line 1379
    :try_start_2b
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isStrokeWithSkb()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1380
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/inputmethod/pinyin/IDecoder;->setDecoderMode(I)V

    .line 1384
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imSetPinyinKeymapMode(Z)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_47} :catch_7c

    .line 1386
    :goto_47
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mIsQWERTYKeyboard:Z

    .line 1387
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->updateCandidateFont()V

    .line 1388
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getLastMode()I

    move-result v0

    .line 1389
    .local v0, mode:I
    if-ltz v0, :cond_5f

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->hasHardKeyboard()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 1390
    const/4 v1, -0x1

    sub-int/2addr v1, v0

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Settings;->setLastMode(I)V

    .line 1392
    :cond_5f
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    if-eqz v1, :cond_68

    .line 1393
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    .line 1395
    :cond_68
    return-void

    .line 1381
    .end local v0           #mode:I
    :cond_69
    :try_start_69
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1382
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/inputmethod/pinyin/IDecoder;->setDecoderMode(I)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_7b} :catch_7c

    goto :goto_3d

    .line 1385
    :catch_7c
    move-exception v1

    goto :goto_47
.end method

.method public toggleSymbols()V
    .registers 13

    .prologue
    const-wide/16 v1, 0x0

    const/4 v6, -0x3

    const/4 v7, 0x0

    .line 1940
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v11, 0x2

    move-wide v3, v1

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 1943
    .local v0, eUp:Landroid/view/KeyEvent;
    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->switchInputMode(I)V

    .line 1944
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->resetToIdleState(Z)V

    .line 1945
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mSkbContainer:Lcom/google/android/inputmethod/pinyin/SkbContainer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateInputMode()V

    .line 1946
    return-void
.end method
