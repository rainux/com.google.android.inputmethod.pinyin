.class public Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;
.super Ljava/lang/Object;
.source "InputModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$1;,
        Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;
    }
.end annotation


# static fields
.field private static final MASK_CASE:I = 0xf0000

.field private static final MASK_CASE_LOWER:I = 0x10000

.field private static final MASK_CASE_UPPER:I = 0x20000

.field private static final MASK_LANGUAGE:I = 0xf00000

.field private static final MASK_LANGUAGE_CN:I = 0x100000

.field private static final MASK_LANGUAGE_EN:I = 0x200000

.field private static final MASK_MISCTOGGLE:I = 0xf

.field private static final MASK_MISCTOGGLE_1:I = 0x1

.field private static final MASK_MISCTOGGLE_2:I = 0x2

.field private static final MASK_MISCTOGGLE_3:I = 0x3

.field private static final MASK_MISCTOGGLE_4:I = 0x4

.field private static final MASK_SKB_FAMILY:I = -0x10000000

.field private static final MASK_SKB_FAMILY_PHONE:I = 0x30000000

.field private static final MASK_SKB_FAMILY_QWERTY:I = 0x10000000

.field private static final MASK_SKB_FAMILY_STROKE:I = 0x20000000

.field private static final MASK_SKB_LAYOUT:I = -0x1000000

.field private static final MASK_SKB_LAYOUT_PHONE:I = 0x31000000

.field private static final MASK_SKB_LAYOUT_QWERTY:I = 0x11000000

.field private static final MASK_SKB_LAYOUT_QWERTY_SMILEY:I = 0x14000000

.field private static final MASK_SKB_LAYOUT_QWERTY_SYM1:I = 0x12000000

.field private static final MASK_SKB_LAYOUT_QWERTY_SYM2:I = 0x13000000

.field private static final MASK_SKB_LAYOUT_STROKE:I = 0x21000000

.field private static final MASK_SKB_LAYOUT_STROKE_DIGIT:I = 0x23000000

.field private static final MASK_SKB_LAYOUT_STROKE_EN_SYM1:I = 0x25000000

.field private static final MASK_SKB_LAYOUT_STROKE_EN_SYM2:I = 0x26000000

.field private static final MASK_SKB_LAYOUT_STROKE_QWERTY:I = 0x22000000

.field public static final MAX_TOGGLE_STATES:I = 0x6

.field public static final MODE_HKB_CHINESE:I = 0x100000

.field public static final MODE_HKB_ENGLISH:I = 0x200000

.field public static final MODE_SKB_PHONE_NUM:I = 0x31000000

.field public static final MODE_SKB_PHONE_SYM:I = 0x31020000

.field public static final MODE_SKB_QWERTY_CN:I = 0x11100000

.field public static final MODE_SKB_QWERTY_EN_LOWER:I = 0x11210000

.field public static final MODE_SKB_QWERTY_EN_UPPER:I = 0x11220000

.field public static final MODE_SKB_QWERTY_SMILEY:I = 0x14000000

.field public static final MODE_SKB_QWERTY_SYM1_CN:I = 0x12100000

.field public static final MODE_SKB_QWERTY_SYM1_EN:I = 0x12200000

.field public static final MODE_SKB_QWERTY_SYM2_CN:I = 0x13100000

.field public static final MODE_SKB_QWERTY_SYM2_EN:I = 0x13200000

.field public static final MODE_SKB_STROKE_CN:I = 0x21100000

.field public static final MODE_SKB_STROKE_DIGIT_CN:I = 0x23100000

.field public static final MODE_SKB_STROKE_EN_LOWER:I = 0x22210000

.field public static final MODE_SKB_STROKE_EN_UPPER:I = 0x22220000

.field public static final MODE_UNSET:I = 0x0

.field static final USERDEF_KEYCODE_DIGIT_7:I = -0x7

.field static final USERDEF_KEYCODE_LANG_2:I = -0x2

.field static final USERDEF_KEYCODE_LAYOUT_12:I = -0xc

.field private static final USERDEF_KEYCODE_MISC_TOGGLE_DOWN_9:I = -0x9

.field private static final USERDEF_KEYCODE_MISC_TOGGLE_UP_8:I = -0x8

.field private static final USERDEF_KEYCODE_MOON_10:I = -0xa

.field static final USERDEF_KEYCODE_MORE_SYM_5:I = -0x5

.field static final USERDEF_KEYCODE_PHONE_SYM_4:I = -0x4

.field static final USERDEF_KEYCODE_SHIFT_1:I = -0x1

.field static final USERDEF_KEYCODE_SMILEY_6:I = -0x6

.field private static final USERDEF_KEYCODE_STROKE_11:I = -0xb

.field static final USERDEF_KEYCODE_SYM_3:I = -0x3


# instance fields
.field private mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

.field private mDoubleQuoteClosed:Z

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mEnterKeyNormal:Z

.field private mImeService:Lcom/google/android/inputmethod/pinyin/PinyinIME;

.field mInputIcon:I

.field private mInputMode:I

.field private mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

.field private mPreviousInputMode:I

.field private mRecentLanguageInputMode:I

.field private mShortMessageField:Z

.field private mSingleQuoteClosed:Z

.field private mToggleRowCn:I

.field private mToggleRowEmailAddress:I

.field private mToggleRowEn:I

.field private mToggleRowUri:I

.field private mToggleStateCn:I

.field private mToggleStateCnCand:I

.field private mToggleStateCnSym1:I

.field private mToggleStateCnSym2:I

.field private mToggleStateDone:I

.field private mToggleStateDoubleQuoteClose:I

.field private mToggleStateEmailAddress:I

.field private mToggleStateEnLower:I

.field private mToggleStateEnSym1:I

.field private mToggleStateEnSym2:I

.field private mToggleStateEnUpper:I

.field private mToggleStateEnUpperLocked:I

.field private mToggleStateExitSymToEn:I

.field private mToggleStateGo:I

.field private mToggleStateMisc1:I

.field private mToggleStateNext:I

.field private mToggleStatePhoneSym:I

.field private mToggleStateSearch:I

.field private mToggleStateSend:I

.field private mToggleStateSingleQuoteClose:I

.field private mToggleStateSmileyOff:I

.field private mToggleStateSmileyOn:I

.field private mToggleStateStrokeDisabled:I

.field private mToggleStateUrl:I

.field private mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;Lcom/android/inputmethod/latin/WordComposer;)V
    .registers 7
    .parameter "imeService"
    .parameter "manager"
    .parameter "composer"

    .prologue
    const/high16 v1, 0x1110

    const/4 v2, 0x0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 379
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mPreviousInputMode:I

    .line 384
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mRecentLanguageInputMode:I

    .line 394
    new-instance v1, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;-><init>(Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    .line 404
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEnterKeyNormal:Z

    .line 409
    const v1, 0x7f020079

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    .line 525
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mDoubleQuoteClosed:Z

    .line 526
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mSingleQuoteClosed:Z

    .line 560
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    .line 561
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    .line 562
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mImeService:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    .line 563
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mImeService:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 564
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateCn:I

    .line 565
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateCnCand:I

    .line 567
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnLower:I

    .line 569
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnUpper:I

    .line 571
    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnSym1:I

    .line 573
    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnSym2:I

    .line 575
    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSmileyOff:I

    .line 577
    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSmileyOn:I

    .line 579
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStatePhoneSym:I

    .line 582
    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateGo:I

    .line 584
    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSearch:I

    .line 586
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSend:I

    .line 588
    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateNext:I

    .line 590
    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateDone:I

    .line 593
    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateMisc1:I

    .line 596
    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleRowCn:I

    .line 597
    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleRowEn:I

    .line 598
    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleRowUri:I

    .line 599
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleRowEmailAddress:I

    .line 602
    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateCnSym1:I

    .line 603
    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateCnSym2:I

    .line 605
    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateUrl:I

    .line 606
    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEmailAddress:I

    .line 607
    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateStrokeDisabled:I

    .line 608
    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateExitSymToEn:I

    .line 609
    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnUpperLocked:I

    .line 611
    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSingleQuoteClose:I

    .line 613
    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateDoubleQuoteClose:I

    .line 615
    return-void
.end method

.method private prepareToggleStates(Z)V
    .registers 15
    .parameter "needSkb"

    .prologue
    .line 1192
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEnterKeyNormal:Z

    .line 1193
    if-nez p1, :cond_6

    .line 1344
    :goto_5
    return-void

    .line 1195
    :cond_6
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/inputmethod/pinyin/Settings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/Settings;

    .line 1197
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getStroke()Z

    move-result v9

    .line 1198
    .local v9, strokeEnabled:Z
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->releaseInstance()V

    .line 1200
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mQwerty:Z

    .line 1201
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    const/4 v12, 0x0

    iput v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mKeyStatesNum:I

    .line 1203
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    iget-object v7, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mKeyStates:[I

    .line 1204
    .local v7, states:[I
    const/4 v8, 0x0

    .line 1206
    .local v8, statesNum:I
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v12, 0xf0

    and-int v4, v11, v12

    .line 1207
    .local v4, language:I
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v12, -0x100

    and-int v5, v11, v12

    .line 1208
    .local v5, layout:I
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v12, -0x1000

    and-int v3, v11, v12

    .line 1209
    .local v3, family:I
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int/lit8 v6, v11, 0xf

    .line 1210
    .local v6, miscToggle:I
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v12, 0xf

    and-int v1, v11, v12

    .line 1211
    .local v1, charcase:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v11, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v10, v11, 0xff0

    .line 1213
    .local v10, variation:I
    const/high16 v11, 0x3100

    if-eq v11, v5, :cond_185

    .line 1214
    const/high16 v11, 0x10

    if-ne v11, v4, :cond_f9

    .line 1217
    const/high16 v11, 0x1100

    if-eq v11, v5, :cond_5d

    const/high16 v11, 0x1400

    if-ne v11, v5, :cond_ce

    .line 1219
    :cond_5d
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mQwerty:Z

    .line 1220
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mQwertyUpperCase:Z

    .line 1222
    if-nez v9, :cond_6f

    .line 1223
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateStrokeDisabled:I

    aput v11, v7, v8

    .line 1224
    add-int/lit8 v8, v8, 0x1

    .line 1267
    :cond_6f
    :goto_6f
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mRecentLanguageInputMode:I

    const/high16 v12, 0x1121

    if-eq v11, v12, :cond_7b

    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mRecentLanguageInputMode:I

    const/high16 v12, 0x1122

    if-ne v11, v12, :cond_81

    .line 1269
    :cond_7b
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateExitSymToEn:I

    aput v11, v7, v8

    .line 1270
    add-int/lit8 v8, v8, 0x1

    .line 1274
    :cond_81
    const/16 v11, 0x20

    if-ne v10, v11, :cond_14f

    .line 1275
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEmailAddress:I

    aput v11, v7, v8

    .line 1276
    add-int/lit8 v8, v8, 0x1

    .line 1283
    :cond_8b
    :goto_8b
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    const/4 v12, 0x0

    iput v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    .line 1284
    const/16 v11, 0x20

    if-ne v10, v11, :cond_15b

    .line 1285
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    iget v12, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleRowEmailAddress:I

    iput v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    .line 1294
    :cond_9a
    :goto_9a
    iget-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mShortMessageField:Z

    if-eqz v11, :cond_a8

    .line 1295
    const/high16 v11, 0x1400

    if-ne v11, v5, :cond_17f

    .line 1296
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSmileyOn:I

    aput v11, v7, v8

    .line 1300
    :goto_a6
    add-int/lit8 v8, v8, 0x1

    .line 1310
    :cond_a8
    :goto_a8
    if-eqz v6, :cond_b3

    .line 1311
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateMisc1:I

    add-int/2addr v11, v6

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aput v11, v7, v8

    .line 1312
    add-int/lit8 v8, v8, 0x1

    .line 1316
    :cond_b3
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v11, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v12, 0x400000ff

    and-int v0, v11, v12

    .line 1319
    .local v0, action:I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_191

    .line 1320
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateGo:I

    aput v11, v7, v8

    .line 1321
    add-int/lit8 v8, v8, 0x1

    .line 1322
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEnterKeyNormal:Z

    .line 1343
    :cond_c8
    :goto_c8
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    iput v8, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mKeyStatesNum:I

    goto/16 :goto_5

    .line 1226
    .end local v0           #action:I
    :cond_ce
    const/high16 v11, 0x1200

    if-ne v11, v5, :cond_ed

    .line 1227
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateCnSym1:I

    aput v11, v7, v8

    .line 1228
    add-int/lit8 v8, v8, 0x1

    .line 1229
    iget-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mDoubleQuoteClosed:Z

    if-eqz v11, :cond_e2

    .line 1230
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateDoubleQuoteClose:I

    aput v11, v7, v8

    .line 1231
    add-int/lit8 v8, v8, 0x1

    .line 1233
    :cond_e2
    iget-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mSingleQuoteClosed:Z

    if-eqz v11, :cond_6f

    .line 1234
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSingleQuoteClose:I

    aput v11, v7, v8

    .line 1235
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 1237
    :cond_ed
    const/high16 v11, 0x1300

    if-ne v11, v5, :cond_6f

    .line 1238
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateCnSym2:I

    aput v11, v7, v8

    .line 1239
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6f

    .line 1241
    :cond_f9
    const/high16 v11, 0x20

    if-ne v11, v4, :cond_6f

    .line 1242
    const/high16 v11, 0x1100

    if-eq v11, v5, :cond_109

    const/high16 v11, 0x2200

    if-eq v11, v5, :cond_109

    const/high16 v11, 0x1400

    if-ne v11, v5, :cond_137

    .line 1245
    :cond_109
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mQwerty:Z

    .line 1246
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mQwertyUpperCase:Z

    .line 1247
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnLower:I

    aput v11, v7, v8

    .line 1248
    const/high16 v11, 0x2

    if-ne v11, v1, :cond_12e

    .line 1249
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mQwertyUpperCase:Z

    .line 1250
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v11}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v11

    sget-object v12, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    if-eq v11, v12, :cond_132

    .line 1252
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnUpper:I

    aput v11, v7, v8

    .line 1257
    :cond_12e
    :goto_12e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6f

    .line 1254
    :cond_132
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnUpperLocked:I

    aput v11, v7, v8

    goto :goto_12e

    .line 1258
    :cond_137
    const/high16 v11, 0x1200

    if-ne v11, v5, :cond_143

    .line 1259
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnSym1:I

    aput v11, v7, v8

    .line 1260
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6f

    .line 1261
    :cond_143
    const/high16 v11, 0x1300

    if-ne v11, v5, :cond_6f

    .line 1262
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateEnSym2:I

    aput v11, v7, v8

    .line 1263
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6f

    .line 1277
    :cond_14f
    const/16 v11, 0x10

    if-ne v10, v11, :cond_8b

    .line 1278
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateUrl:I

    aput v11, v7, v8

    .line 1279
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8b

    .line 1286
    :cond_15b
    const/16 v11, 0x10

    if-ne v10, v11, :cond_167

    .line 1287
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    iget v12, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleRowUri:I

    iput v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    goto/16 :goto_9a

    .line 1288
    :cond_167
    const/high16 v11, 0x10

    if-ne v11, v4, :cond_173

    .line 1289
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    iget v12, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleRowCn:I

    iput v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    goto/16 :goto_9a

    .line 1290
    :cond_173
    const/high16 v11, 0x20

    if-ne v11, v4, :cond_9a

    .line 1291
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    iget v12, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleRowEn:I

    iput v12, v11, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    goto/16 :goto_9a

    .line 1298
    :cond_17f
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSmileyOff:I

    aput v11, v7, v8

    goto/16 :goto_a6

    .line 1303
    :cond_185
    const/high16 v11, 0x2

    if-ne v11, v1, :cond_a8

    .line 1304
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStatePhoneSym:I

    aput v11, v7, v8

    .line 1305
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a8

    .line 1323
    .restart local v0       #action:I
    :cond_191
    const/4 v11, 0x3

    if-ne v0, v11, :cond_19f

    .line 1324
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSearch:I

    aput v11, v7, v8

    .line 1325
    add-int/lit8 v8, v8, 0x1

    .line 1326
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEnterKeyNormal:Z

    goto/16 :goto_c8

    .line 1327
    :cond_19f
    const/4 v11, 0x4

    if-ne v0, v11, :cond_1ad

    .line 1328
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateSend:I

    aput v11, v7, v8

    .line 1329
    add-int/lit8 v8, v8, 0x1

    .line 1330
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEnterKeyNormal:Z

    goto/16 :goto_c8

    .line 1331
    :cond_1ad
    const/4 v11, 0x5

    if-ne v0, v11, :cond_1c8

    .line 1332
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v11, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v12, 0xfff000

    and-int v2, v11, v12

    .line 1333
    .local v2, f:I
    const/high16 v11, 0x2

    if-eq v2, v11, :cond_c8

    .line 1334
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateNext:I

    aput v11, v7, v8

    .line 1335
    add-int/lit8 v8, v8, 0x1

    .line 1336
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEnterKeyNormal:Z

    goto/16 :goto_c8

    .line 1338
    .end local v2           #f:I
    :cond_1c8
    const/4 v11, 0x6

    if-ne v0, v11, :cond_c8

    .line 1339
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateDone:I

    aput v11, v7, v8

    .line 1340
    add-int/lit8 v8, v8, 0x1

    .line 1341
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEnterKeyNormal:Z

    goto/16 :goto_c8
.end method

.method private requestInputWithQwertySkb(Landroid/view/inputmethod/EditorInfo;)I
    .registers 12
    .parameter "editorInfo"

    .prologue
    const/high16 v9, 0xf0

    const/high16 v8, 0x10

    const/4 v7, 0x1

    const/high16 v6, -0x100

    const/high16 v5, -0x1000

    .line 890
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mShortMessageField:Z

    .line 892
    const/high16 v0, 0x1110

    .line 893
    .local v0, newInputMode:I
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v4, v4, 0xf

    packed-switch v4, :pswitch_data_74

    .line 929
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v2, v4, v6

    .line 930
    .local v2, skbLayout:I
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v1, v4, v5

    .line 931
    .local v1, skbFamily:I
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 932
    if-nez v2, :cond_28

    .line 933
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v9

    if-ne v4, v8, :cond_71

    .line 934
    const/high16 v0, 0x1110

    .line 942
    .end local v1           #skbFamily:I
    .end local v2           #skbLayout:I
    :cond_28
    :goto_28
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 943
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    .line 944
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 945
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    return v4

    .line 896
    :pswitch_33
    const/high16 v0, 0x1220

    .line 897
    goto :goto_28

    .line 899
    :pswitch_36
    const/high16 v0, 0x3100

    .line 900
    goto :goto_28

    .line 902
    :pswitch_39
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v3, v4, 0xff0

    .line 903
    .local v3, v:I
    const/16 v4, 0x20

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x80

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x90

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 908
    :cond_4d
    const/high16 v0, 0x1121

    goto :goto_28

    .line 910
    :cond_50
    const/16 v4, 0x40

    if-ne v3, v4, :cond_56

    .line 911
    iput-boolean v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mShortMessageField:Z

    .line 915
    :cond_56
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v2, v4, v6

    .line 916
    .restart local v2       #skbLayout:I
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v1, v4, v5

    .line 917
    .restart local v1       #skbFamily:I
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 918
    if-eqz v2, :cond_66

    const/high16 v4, 0x1000

    if-eq v4, v1, :cond_28

    .line 919
    :cond_66
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v9

    if-ne v4, v8, :cond_6e

    .line 920
    const/high16 v0, 0x1110

    goto :goto_28

    .line 922
    :cond_6e
    const/high16 v0, 0x1121

    goto :goto_28

    .line 936
    .end local v3           #v:I
    :cond_71
    const/high16 v0, 0x1121

    goto :goto_28

    .line 893
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_39
        :pswitch_33
        :pswitch_36
        :pswitch_33
    .end packed-switch
.end method

.method private requestInputWithStrokeSkb(Landroid/view/inputmethod/EditorInfo;)I
    .registers 12
    .parameter "editorInfo"

    .prologue
    const/high16 v9, 0xf0

    const/high16 v8, 0x10

    const/4 v7, 0x1

    const/high16 v6, -0x100

    const/high16 v5, -0x1000

    .line 950
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mShortMessageField:Z

    .line 952
    const/high16 v0, 0x2110

    .line 954
    .local v0, newInputMode:I
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v4, v4, 0xf

    packed-switch v4, :pswitch_data_78

    .line 990
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v2, v4, v6

    .line 991
    .local v2, skbLayout:I
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v1, v4, v5

    .line 992
    .local v1, skbFamily:I
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 993
    if-eqz v2, :cond_25

    const/high16 v4, 0x2000

    if-eq v4, v1, :cond_2c

    .line 994
    :cond_25
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v9

    if-ne v4, v8, :cond_75

    .line 995
    const/high16 v0, 0x2110

    .line 1003
    .end local v1           #skbFamily:I
    .end local v2           #skbLayout:I
    :cond_2c
    :goto_2c
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1004
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    .line 1005
    invoke-direct {p0, v7}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 1006
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    return v4

    .line 957
    :pswitch_37
    const/high16 v0, 0x1220

    .line 958
    goto :goto_2c

    .line 960
    :pswitch_3a
    const/high16 v0, 0x3100

    .line 961
    goto :goto_2c

    .line 963
    :pswitch_3d
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v3, v4, 0xff0

    .line 964
    .local v3, v:I
    const/16 v4, 0x20

    if-eq v3, v4, :cond_51

    const/16 v4, 0x80

    if-eq v3, v4, :cond_51

    const/16 v4, 0x90

    if-eq v3, v4, :cond_51

    const/16 v4, 0x10

    if-ne v3, v4, :cond_54

    .line 969
    :cond_51
    const/high16 v0, 0x2221

    goto :goto_2c

    .line 971
    :cond_54
    const/16 v4, 0x40

    if-ne v3, v4, :cond_5a

    .line 972
    iput-boolean v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mShortMessageField:Z

    .line 976
    :cond_5a
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v2, v4, v6

    .line 977
    .restart local v2       #skbLayout:I
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v1, v4, v5

    .line 978
    .restart local v1       #skbFamily:I
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 979
    if-eqz v2, :cond_6a

    const/high16 v4, 0x2000

    if-eq v4, v1, :cond_2c

    .line 980
    :cond_6a
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v9

    if-ne v4, v8, :cond_72

    .line 981
    const/high16 v0, 0x2110

    goto :goto_2c

    .line 983
    :cond_72
    const/high16 v0, 0x2221

    goto :goto_2c

    .line 997
    .end local v3           #v:I
    :cond_75
    const/high16 v0, 0x2221

    goto :goto_2c

    .line 954
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_37
        :pswitch_3a
        :pswitch_37
    .end packed-switch
.end method

.method private saveInputMode(I)V
    .registers 6
    .parameter "newInputMode"

    .prologue
    const v3, 0x7f020079

    .line 1170
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mPreviousInputMode:I

    .line 1171
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 1173
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x100

    and-int v0, v1, v2

    .line 1174
    .local v0, skbLayout:I
    const/high16 v1, 0x1100

    if-eq v1, v0, :cond_19

    const/high16 v1, 0x2100

    if-eq v1, v0, :cond_19

    if-nez v0, :cond_1d

    .line 1176
    :cond_19
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mRecentLanguageInputMode:I

    .line 1179
    :cond_1d
    iput v3, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    .line 1180
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnglishWithHkb()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1181
    const v1, 0x7f020078

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    .line 1186
    :cond_2a
    :goto_2a
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->hasHardKeyboard()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1187
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    .line 1189
    :cond_37
    return-void

    .line 1182
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseTextWithHkb()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1183
    iput v3, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    goto :goto_2a
.end method


# virtual methods
.method public getCurrentEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 2

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getInputMode()I
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    return v0
.end method

.method public getMiscToggleStateId()I
    .registers 2

    .prologue
    .line 651
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getSkbLayout()I
    .registers 4

    .prologue
    .line 626
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x100

    and-int v0, v1, v2

    .line 628
    .local v0, layout:I
    sparse-switch v0, :sswitch_data_28

    .line 646
    const/4 v1, 0x0

    :goto_a
    return v1

    .line 630
    :sswitch_b
    const v1, 0x7f050004

    goto :goto_a

    .line 632
    :sswitch_f
    const v1, 0x7f050008

    goto :goto_a

    .line 634
    :sswitch_13
    const v1, 0x7f050009

    goto :goto_a

    .line 636
    :sswitch_17
    const v1, 0x7f050005

    goto :goto_a

    .line 639
    :sswitch_1b
    const v1, 0x7f050006

    goto :goto_a

    .line 641
    :sswitch_1f
    const v1, 0x7f050007

    goto :goto_a

    .line 644
    :sswitch_23
    const v1, 0x7f050003

    goto :goto_a

    .line 628
    nop

    :sswitch_data_28
    .sparse-switch
        0x11000000 -> :sswitch_b
        0x12000000 -> :sswitch_f
        0x13000000 -> :sswitch_13
        0x14000000 -> :sswitch_17
        0x21000000 -> :sswitch_1b
        0x23000000 -> :sswitch_1f
        0x31000000 -> :sswitch_23
    .end sparse-switch
.end method

.method public getToggleStates()Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStates:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    return-object v0
.end method

.method public getTooggleStateForCnCand()I
    .registers 2

    .prologue
    .line 1075
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mToggleStateCnCand:I

    return v0
.end method

.method public isChineseText()Z
    .registers 5

    .prologue
    .line 1103
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v3, -0x100

    and-int v1, v2, v3

    .line 1104
    .local v1, skbLayout:I
    const/high16 v2, 0x1100

    if-eq v2, v1, :cond_10

    const/high16 v2, 0x2100

    if-eq v2, v1, :cond_10

    if-nez v1, :cond_1c

    .line 1107
    :cond_10
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf0

    and-int v0, v2, v3

    .line 1108
    .local v0, language:I
    const/high16 v2, 0x10

    if-ne v2, v0, :cond_1c

    const/4 v2, 0x1

    .line 1110
    .end local v0           #language:I
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public isChineseTextWithHkb()Z
    .registers 5

    .prologue
    .line 1114
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v3, -0x100

    and-int v1, v2, v3

    .line 1115
    .local v1, skbLayout:I
    if-nez v1, :cond_14

    .line 1116
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf0

    and-int v0, v2, v3

    .line 1117
    .local v0, language:I
    const/high16 v2, 0x10

    if-ne v2, v0, :cond_14

    const/4 v2, 0x1

    .line 1119
    .end local v0           #language:I
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public isChineseTextWithSkb()Z
    .registers 5

    .prologue
    .line 1123
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v3, -0x100

    and-int v1, v2, v3

    .line 1124
    .local v1, skbLayout:I
    const/high16 v2, 0x1100

    if-eq v2, v1, :cond_e

    const/high16 v2, 0x2100

    if-ne v2, v1, :cond_1a

    .line 1126
    :cond_e
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf0

    and-int v0, v2, v3

    .line 1127
    .local v0, language:I
    const/high16 v2, 0x10

    if-ne v2, v0, :cond_1a

    const/4 v2, 0x1

    .line 1129
    .end local v0           #language:I
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public isEnglishUpperCaseLocked()Z
    .registers 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isEnglishUpperCaseWithSkb()Z
    .registers 3

    .prologue
    .line 1094
    const/high16 v0, 0x1122

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v0, v1, :cond_c

    const/high16 v0, 0x2222

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEnglishWithHkb()Z
    .registers 3

    .prologue
    .line 1083
    const/high16 v0, 0x20

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnglishWithSkb()Z
    .registers 3

    .prologue
    .line 1087
    const/high16 v0, 0x1121

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v0, v1, :cond_18

    const/high16 v0, 0x1122

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v0, v1, :cond_18

    const/high16 v0, 0x2221

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v0, v1, :cond_18

    const/high16 v0, 0x2222

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isEnterNoramlState()Z
    .registers 2

    .prologue
    .line 1150
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEnterKeyNormal:Z

    return v0
.end method

.method public isHalfMoonSymbolWithSkb()Z
    .registers 3

    .prologue
    .line 1142
    const/high16 v0, 0x1320

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v0, v1, :cond_c

    const/high16 v0, 0x1220

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_e

    .line 1144
    :cond_c
    const/4 v0, 0x1

    .line 1146
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStrokeWithSkb()Z
    .registers 3

    .prologue
    .line 1079
    const/high16 v0, 0x2110

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSymbolWithSkb()Z
    .registers 4

    .prologue
    .line 1133
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x100

    and-int v0, v1, v2

    .line 1134
    .local v0, skbLayout:I
    const/high16 v1, 0x1200

    if-eq v1, v0, :cond_e

    const/high16 v1, 0x1300

    if-ne v1, v0, :cond_10

    .line 1136
    :cond_e
    const/4 v1, 0x1

    .line 1138
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public requestBackToEnLowerSkb()I
    .registers 3

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    sget-object v1, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    .line 1047
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    .line 1048
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    return v0
.end method

.method public requestBackToPreviousSkb()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, -0x100

    .line 1011
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v4, v5, v6

    .line 1012
    .local v4, layout:I
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mPreviousInputMode:I

    and-int v3, v5, v6

    .line 1013
    .local v3, lastLayout:I
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mPreviousInputMode:I

    const/high16 v6, -0x1000

    and-int v2, v5, v6

    .line 1014
    .local v2, lastFamily:I
    const/high16 v5, 0x1000

    if-eq v2, v5, :cond_1a

    const/high16 v5, 0x2000

    if-ne v2, v5, :cond_40

    :cond_1a
    move v0, v8

    .line 1016
    .local v0, familyRight:Z
    :goto_1b
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v6, 0xff

    and-int v1, v5, v6

    .line 1017
    .local v1, language:I
    if-nez v1, :cond_25

    .line 1018
    const/high16 v1, 0x10

    .line 1021
    :cond_25
    if-eqz v4, :cond_56

    if-eqz v3, :cond_56

    if-eqz v0, :cond_56

    .line 1022
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mPreviousInputMode:I

    if-eq v5, v6, :cond_42

    .line 1023
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mPreviousInputMode:I

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 1031
    :cond_35
    :goto_35
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    .line 1032
    invoke-direct {p0, v8}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 1033
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    .line 1042
    :goto_3f
    return v5

    .end local v0           #familyRight:Z
    .end local v1           #language:I
    :cond_40
    move v0, v7

    .line 1014
    goto :goto_1b

    .line 1025
    .restart local v0       #familyRight:Z
    .restart local v1       #language:I
    :cond_42
    const/high16 v5, 0x1100

    or-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 1026
    const/high16 v5, 0x20

    if-ne v1, v5, :cond_35

    .line 1027
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v6, 0x2

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 1028
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    goto :goto_35

    .line 1035
    :cond_56
    const/high16 v5, 0x10

    if-ne v5, v1, :cond_60

    .line 1036
    const/high16 v5, 0x1110

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    :goto_5e
    move v5, v7

    .line 1042
    goto :goto_3f

    .line 1038
    :cond_60
    const/high16 v5, 0x1121

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    .line 1039
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestUpdateShiftState()V

    goto :goto_5e
.end method

.method public requestInputWithHkb(Landroid/view/inputmethod/EditorInfo;)I
    .registers 8
    .parameter "editorInfo"

    .prologue
    const/4 v5, 0x0

    .line 834
    iput-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mShortMessageField:Z

    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, english:Z
    const/high16 v1, 0x10

    .line 838
    .local v1, newInputMode:I
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_4c

    .line 858
    :cond_d
    :goto_d
    if-eqz v0, :cond_3c

    .line 860
    const/high16 v1, 0x20

    .line 873
    :goto_11
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 874
    invoke-direct {p0, v1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    .line 875
    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 876
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    return v3

    .line 842
    :pswitch_1c
    const/4 v0, 0x1

    .line 843
    goto :goto_d

    .line 845
    :pswitch_1e
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v3, 0xff0

    .line 846
    .local v2, v:I
    const/16 v3, 0x20

    if-eq v2, v3, :cond_32

    const/16 v3, 0x80

    if-eq v2, v3, :cond_32

    const/16 v3, 0x90

    if-eq v2, v3, :cond_32

    const/16 v3, 0x10

    if-ne v2, v3, :cond_34

    .line 850
    :cond_32
    const/4 v0, 0x1

    goto :goto_d

    .line 851
    :cond_34
    const/16 v3, 0x40

    if-ne v2, v3, :cond_d

    .line 852
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mShortMessageField:Z

    goto :goto_d

    .line 867
    .end local v2           #v:I
    :cond_3c
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mRecentLanguageInputMode:I

    const/high16 v4, 0xf0

    and-int/2addr v3, v4

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_48

    .line 868
    const/high16 v1, 0x10

    goto :goto_11

    .line 870
    :cond_48
    const/high16 v1, 0x20

    goto :goto_11

    .line 838
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public requestInputWithSkb(Landroid/view/inputmethod/EditorInfo;)I
    .registers 5
    .parameter "editorInfo"

    .prologue
    .line 881
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int v0, v1, v2

    .line 882
    .local v0, family:I
    const/high16 v1, 0x2000

    if-ne v0, v1, :cond_f

    .line 883
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestInputWithStrokeSkb(Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    .line 885
    :goto_e
    return v1

    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->requestInputWithQwertySkb(Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    goto :goto_e
.end method

.method public requestUpdateShiftState()V
    .registers 5

    .prologue
    const/high16 v3, 0x1122

    const/high16 v2, 0x1121

    .line 1052
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isEnglishWithSkb()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1072
    :goto_a
    return-void

    .line 1056
    :cond_b
    sget-object v0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 1071
    :goto_1c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    goto :goto_a

    .line 1058
    :pswitch_21
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    goto :goto_1c

    .line 1061
    :pswitch_25
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 1062
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    goto :goto_1c

    .line 1064
    :cond_31
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    goto :goto_1c

    .line 1068
    :pswitch_35
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    goto :goto_1c

    .line 1056
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_25
        :pswitch_35
    .end packed-switch
.end method

.method public setDoubleQuoteClosed()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1352
    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mDoubleQuoteClosed:Z

    .line 1353
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 1354
    return-void
.end method

.method public setDoubleQuoteOpen()V
    .registers 2

    .prologue
    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mDoubleQuoteClosed:Z

    .line 1348
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 1349
    return-void
.end method

.method public setSingleQuoteClosed()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1362
    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mSingleQuoteClosed:Z

    .line 1363
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 1364
    return-void
.end method

.method public setSingleQuoteOpen()V
    .registers 2

    .prologue
    .line 1357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mSingleQuoteClosed:Z

    .line 1358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 1359
    return-void
.end method

.method public switchLanguageWithHkb()I
    .registers 4

    .prologue
    .line 656
    const/high16 v0, 0x10

    .line 657
    .local v0, newInputMode:I
    const v1, 0x7f020079

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    .line 659
    const/high16 v1, 0x10

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v1, v2, :cond_14

    .line 660
    const/high16 v0, 0x20

    .line 661
    const v1, 0x7f020078

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    .line 664
    :cond_14
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    .line 665
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchModeForUserKey(I)I
    .registers 15
    .parameter "userKey"

    .prologue
    const/high16 v12, 0x1400

    const/high16 v11, 0x1100

    const/high16 v10, 0x2

    const/high16 v9, 0x20

    const/high16 v8, -0x100

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, caseLocked:Z
    const/4 v3, 0x0

    .line 673
    .local v3, newInputMode:I
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/inputmethod/pinyin/Settings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/Settings;

    .line 675
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getStroke()Z

    move-result v4

    .line 676
    .local v4, strokeEnabled:Z
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->releaseInstance()V

    .line 678
    const/4 v6, -0x2

    if-ne v6, p1, :cond_90

    .line 679
    const/high16 v6, 0x1110

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_81

    .line 680
    sget-object v6, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1fc

    .line 802
    :cond_3c
    :goto_3c
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v6

    sget-object v7, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    if-ne v6, v7, :cond_1d5

    const/4 v6, 0x1

    move v0, v6

    .line 804
    :goto_48
    and-int v6, v3, v8

    if-ne v6, v11, :cond_62

    const/high16 v6, 0xf0

    and-int/2addr v6, v3

    if-ne v6, v9, :cond_62

    .line 806
    sget-object v6, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_206

    .line 823
    :cond_62
    :goto_62
    if-nez v0, :cond_1f1

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v3, v6, :cond_6a

    if-nez v3, :cond_1f1

    .line 824
    :cond_6a
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    .line 829
    :goto_6c
    return v6

    .line 682
    :pswitch_6d
    const/high16 v3, 0x1121

    .line 683
    goto :goto_3c

    .line 685
    :pswitch_70
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v6

    if-lez v6, :cond_7b

    .line 686
    const/high16 v3, 0x1121

    goto :goto_3c

    .line 688
    :cond_7b
    const/high16 v3, 0x1122

    .line 690
    goto :goto_3c

    .line 692
    :pswitch_7e
    const/high16 v3, 0x1122

    goto :goto_3c

    .line 695
    :cond_81
    const/high16 v6, 0x1121

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v6, v7, :cond_8d

    const/high16 v6, 0x1122

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_3c

    .line 697
    :cond_8d
    const/high16 v3, 0x1110

    goto :goto_3c

    .line 699
    :cond_90
    const/16 v6, -0xa

    if-ne v6, p1, :cond_b8

    .line 700
    const/high16 v6, 0x1210

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_9d

    .line 701
    const/high16 v3, 0x1220

    goto :goto_3c

    .line 702
    :cond_9d
    const/high16 v6, 0x1220

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_a6

    .line 703
    const/high16 v3, 0x1210

    goto :goto_3c

    .line 704
    :cond_a6
    const/high16 v6, 0x1310

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_af

    .line 705
    const/high16 v3, 0x1320

    goto :goto_3c

    .line 706
    :cond_af
    const/high16 v6, 0x1320

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_3c

    .line 707
    const/high16 v3, 0x1310

    goto :goto_3c

    .line 709
    :cond_b8
    const/16 v6, -0xb

    if-ne v6, p1, :cond_ca

    .line 710
    const/high16 v6, 0x2110

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_c6

    .line 711
    const/high16 v3, 0x1110

    goto/16 :goto_3c

    .line 713
    :cond_c6
    const/high16 v3, 0x2110

    goto/16 :goto_3c

    .line 715
    :cond_ca
    const/4 v6, -0x3

    if-ne v6, p1, :cond_126

    .line 716
    const/high16 v6, 0x2310

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_d7

    .line 717
    const/high16 v3, 0x2110

    goto/16 :goto_3c

    .line 718
    :cond_d7
    const/high16 v6, 0x1110

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_e1

    .line 719
    const/high16 v3, 0x1210

    goto/16 :goto_3c

    .line 720
    :cond_e1
    const/high16 v6, 0x1122

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v6, v7, :cond_ed

    const/high16 v6, 0x1121

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_f1

    .line 722
    :cond_ed
    const/high16 v3, 0x1220

    goto/16 :goto_3c

    .line 723
    :cond_f1
    const/high16 v6, 0x1220

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v6, v7, :cond_fd

    const/high16 v6, 0x1320

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_101

    .line 725
    :cond_fd
    const/high16 v3, 0x1121

    goto/16 :goto_3c

    .line 726
    :cond_101
    const/high16 v6, 0x1210

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-eq v6, v7, :cond_10d

    const/high16 v6, 0x1310

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_111

    .line 728
    :cond_10d
    const/high16 v3, 0x1110

    goto/16 :goto_3c

    .line 729
    :cond_111
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v12, v6, :cond_3c

    .line 730
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v7, 0xff

    and-int v1, v6, v7

    .line 731
    .local v1, language:I
    if-nez v1, :cond_11f

    .line 732
    const/high16 v1, 0x10

    .line 734
    :cond_11f
    or-int v3, v11, v1

    .line 735
    if-ne v1, v9, :cond_3c

    .line 736
    or-int/2addr v3, v10

    goto/16 :goto_3c

    .line 739
    .end local v1           #language:I
    :cond_126
    const/4 v6, -0x1

    if-ne v6, p1, :cond_16a

    .line 740
    sget-object v6, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_210

    goto/16 :goto_3c

    .line 742
    :pswitch_13c
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    sget-object v7, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v6, v7}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    .line 743
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v6

    if-lez v6, :cond_14f

    .line 744
    const/high16 v3, 0x1121

    goto/16 :goto_3c

    .line 746
    :cond_14f
    const/high16 v3, 0x1122

    .line 748
    goto/16 :goto_3c

    .line 750
    :pswitch_153
    const/high16 v3, 0x1122

    .line 751
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    sget-object v7, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v6, v7}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    .line 752
    const/4 v0, 0x1

    .line 753
    goto/16 :goto_3c

    .line 755
    :pswitch_15f
    const/high16 v3, 0x1121

    .line 756
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mCapitalManager:Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    sget-object v7, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v6, v7}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    goto/16 :goto_3c

    .line 759
    :cond_16a
    const/4 v6, -0x5

    if-ne v6, p1, :cond_184

    .line 760
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v5, v8, v6

    .line 761
    .local v5, sym:I
    const/high16 v6, 0x1200

    if-ne v6, v5, :cond_181

    .line 762
    const/high16 v5, 0x1300

    .line 766
    :goto_177
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const v7, 0xffffff

    and-int/2addr v6, v7

    or-int v3, v6, v5

    .line 767
    goto/16 :goto_3c

    .line 764
    :cond_181
    const/high16 v5, 0x1200

    goto :goto_177

    .line 767
    .end local v5           #sym:I
    :cond_184
    const/4 v6, -0x6

    if-ne v6, p1, :cond_1ad

    .line 768
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v7, 0xff

    and-int v1, v6, v7

    .line 769
    .restart local v1       #language:I
    if-nez v1, :cond_191

    .line 770
    const/high16 v1, 0x10

    .line 772
    :cond_191
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v2, v6, v8

    .line 773
    .local v2, layout:I
    if-eq v12, v2, :cond_19e

    .line 774
    or-int v3, v12, v1

    .line 785
    :cond_199
    :goto_199
    if-ne v1, v9, :cond_3c

    .line 786
    or-int/2addr v3, v10

    goto/16 :goto_3c

    .line 776
    :cond_19e
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mPreviousInputMode:I

    if-eq v6, v7, :cond_1a7

    .line 777
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mPreviousInputMode:I

    goto :goto_199

    .line 779
    :cond_1a7
    or-int v3, v11, v1

    .line 780
    if-ne v1, v9, :cond_199

    .line 781
    or-int/2addr v3, v10

    goto :goto_199

    .line 788
    .end local v1           #language:I
    .end local v2           #layout:I
    :cond_1ad
    const/4 v6, -0x4

    if-ne v6, p1, :cond_1be

    .line 789
    const/high16 v6, 0x3100

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    if-ne v6, v7, :cond_1ba

    .line 790
    const/high16 v3, 0x3102

    goto/16 :goto_3c

    .line 792
    :cond_1ba
    const/high16 v3, 0x3100

    goto/16 :goto_3c

    .line 794
    :cond_1be
    const/4 v6, -0x7

    if-ne v6, p1, :cond_3c

    .line 795
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    and-int v5, v8, v6

    .line 796
    .restart local v5       #sym:I
    const/high16 v6, 0x2100

    if-ne v6, v5, :cond_1cb

    .line 797
    const/high16 v5, 0x2300

    .line 799
    :cond_1cb
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const v7, 0xffffff

    and-int/2addr v6, v7

    or-int v3, v6, v5

    goto/16 :goto_3c

    .line 802
    .end local v5           #sym:I
    :cond_1d5
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_48

    .line 808
    :pswitch_1d9
    const/high16 v3, 0x1121

    .line 809
    goto/16 :goto_62

    .line 811
    :pswitch_1dd
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mLatinWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v6

    if-lez v6, :cond_1e9

    .line 812
    const/high16 v3, 0x1121

    goto/16 :goto_62

    .line 814
    :cond_1e9
    const/high16 v3, 0x1122

    .line 816
    goto/16 :goto_62

    .line 818
    :pswitch_1ed
    const/high16 v3, 0x1122

    goto/16 :goto_62

    .line 827
    :cond_1f1
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->saveInputMode(I)V

    .line 828
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 829
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputIcon:I

    goto/16 :goto_6c

    .line 680
    :pswitch_data_1fc
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_70
        :pswitch_7e
    .end packed-switch

    .line 806
    :pswitch_data_206
    .packed-switch 0x1
        :pswitch_1d9
        :pswitch_1dd
        :pswitch_1ed
    .end packed-switch

    .line 740
    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_13c
        :pswitch_153
        :pswitch_15f
    .end packed-switch
.end method

.method public tryHandleLongPressSwitch(I)Z
    .registers 6
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x1

    .line 1154
    const/4 v1, -0x3

    if-eq v1, p1, :cond_7

    const/4 v1, -0x4

    if-ne v1, p1, :cond_e

    .line 1155
    :cond_7
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mImeService:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->showOptionsMenu()V

    move v1, v3

    .line 1162
    :goto_d
    return v1

    .line 1157
    :cond_e
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mShortMessageField:Z

    if-eqz v1, :cond_25

    const/16 v1, 0x42

    if-ne v1, p1, :cond_25

    .line 1158
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x100

    and-int v0, v1, v2

    .line 1159
    .local v0, layout:I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->mImeService:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->commitResultText(Ljava/lang/String;)V

    move v1, v3

    .line 1160
    goto :goto_d

    .line 1162
    .end local v0           #layout:I
    :cond_25
    const/4 v1, 0x0

    goto :goto_d
.end method
