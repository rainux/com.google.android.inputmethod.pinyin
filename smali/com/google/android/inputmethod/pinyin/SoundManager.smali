.class public Lcom/google/android/inputmethod/pinyin/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field private static mInstance:Lcom/google/android/inputmethod/pinyin/SoundManager;


# instance fields
.field private final FX_VOLUME:F

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mSilentMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mInstance:Lcom/google/android/inputmethod/pinyin/SoundManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->FX_VOLUME:F

    .line 33
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoundManager;->updateRingerMode()V

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/SoundManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mInstance:Lcom/google/android/inputmethod/pinyin/SoundManager;

    if-nez v0, :cond_d

    .line 47
    if-eqz p0, :cond_d

    .line 48
    new-instance v0, Lcom/google/android/inputmethod/pinyin/SoundManager;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/SoundManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mInstance:Lcom/google/android/inputmethod/pinyin/SoundManager;

    .line 51
    :cond_d
    sget-object v0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mInstance:Lcom/google/android/inputmethod/pinyin/SoundManager;

    return-object v0
.end method


# virtual methods
.method public playKeyDown()V
    .registers 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_7

    .line 56
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoundManager;->updateRingerMode()V

    .line 58
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mSilentMode:Z

    if-nez v1, :cond_13

    .line 59
    const/4 v0, 0x5

    .line 60
    .local v0, sound:I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 62
    .end local v0           #sound:I
    :cond_13
    return-void
.end method

.method public updateRingerMode()V
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 39
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 42
    :cond_10
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SoundManager;->mSilentMode:Z

    .line 43
    return-void

    .line 42
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method
