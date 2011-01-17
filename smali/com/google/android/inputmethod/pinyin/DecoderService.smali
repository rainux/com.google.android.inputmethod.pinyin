.class public Lcom/google/android/inputmethod/pinyin/DecoderService;
.super Landroid/app/Service;
.source "DecoderService.java"


# instance fields
.field private mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

.field private mBindingCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBindingCount:I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 47
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    if-nez v3, :cond_20

    .line 48
    new-instance v3, Lcom/google/android/inputmethod/pinyin/Decoder;

    invoke-direct {v3, p0}, Lcom/google/android/inputmethod/pinyin/Decoder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    .line 49
    iput v4, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBindingCount:I

    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, succeed:Z
    :try_start_10
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->setDecoderMode(I)V

    .line 55
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->openDecoder()Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_26

    move-result v2

    .line 59
    :goto_1c
    if-nez v2, :cond_20

    .line 60
    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    .line 64
    .end local v2           #succeed:Z
    :cond_20
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    if-nez v3, :cond_2b

    move-object v3, v5

    .line 77
    :goto_25
    return-object v3

    .line 56
    .restart local v2       #succeed:Z
    :catch_26
    move-exception v3

    move-object v0, v3

    .line 57
    .local v0, e:Landroid/os/RemoteException;
    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    goto :goto_1c

    .line 67
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #succeed:Z
    :cond_2b
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBindingCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBindingCount:I

    .line 69
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/DecoderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/Settings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/Settings;

    .line 71
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getFaultTolerance()Z

    move-result v1

    .line 72
    .local v1, isFaultToleranceEnabled:Z
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->releaseInstance()V

    .line 74
    :try_start_43
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imSetStrokeFaultTolerance(Z)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_4b

    .line 77
    :goto_48
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    goto :goto_25

    .line 75
    :catch_4b
    move-exception v3

    goto :goto_48
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBindingCount:I

    if-lez v0, :cond_d

    .line 38
    :try_start_8
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->closeDecoder()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_11

    .line 42
    :cond_d
    :goto_d
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 43
    return-void

    .line 39
    :catch_11
    move-exception v0

    goto :goto_d
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    if-nez v1, :cond_8

    move v1, v2

    .line 96
    :goto_7
    return v1

    .line 84
    :cond_8
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBindingCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBindingCount:I

    .line 86
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBindingCount:I

    if-gtz v1, :cond_1f

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, succeed:Z
    :try_start_12
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->closeDecoder()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_21

    move-result v0

    .line 92
    :goto_18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBinder:Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;

    .line 93
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/DecoderService;->mBindingCount:I

    move v1, v0

    .line 94
    goto :goto_7

    .end local v0           #succeed:Z
    :cond_1f
    move v1, v3

    .line 96
    goto :goto_7

    .line 90
    .restart local v0       #succeed:Z
    :catch_21
    move-exception v1

    goto :goto_18
.end method
