.class public Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;
.super Ljava/lang/Object;
.source "PunctuationBasedCapitalManager.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/CapitalManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;
    }
.end annotation


# instance fields
.field mManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;

.field mPrepareToSwitch:Z

.field mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;)V
    .registers 3
    .parameter "manager"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mPrepareToSwitch:Z

    .line 28
    sget-object v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    .line 29
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;

    .line 30
    return-void
.end method


# virtual methods
.method public filterResultText(Ljava/lang/String;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 49
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;->needAutoCapitalization()Z

    move-result v1

    if-nez v1, :cond_a

    .line 77
    :cond_9
    :goto_9
    :sswitch_9
    return-void

    .line 53
    :cond_a
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 58
    .local v0, last:C
    sparse-switch v0, :sswitch_data_34

    .line 74
    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mPrepareToSwitch:Z

    goto :goto_9

    .line 65
    :sswitch_22
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mPrepareToSwitch:Z

    goto :goto_9

    .line 69
    :sswitch_25
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mPrepareToSwitch:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    sget-object v2, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    if-ne v1, v2, :cond_1e

    .line 70
    sget-object v1, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    goto :goto_1e

    .line 58
    :sswitch_data_34
    .sparse-switch
        0xa -> :sswitch_25
        0x20 -> :sswitch_25
        0x21 -> :sswitch_22
        0x22 -> :sswitch_9
        0x27 -> :sswitch_9
        0x2e -> :sswitch_22
        0x3f -> :sswitch_22
    .end sparse-switch
.end method

.method public getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    return-object v0
.end method

.method public resetShiftState()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager$AutoCapitalizationManager;->needAutoCapitalization()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    sget-object v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    .line 46
    :goto_c
    return-void

    .line 44
    :cond_d
    sget-object v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    goto :goto_c
.end method

.method public setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->mShiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    .line 34
    return-void
.end method
