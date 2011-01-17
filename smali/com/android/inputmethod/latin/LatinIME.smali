.class public Lcom/android/inputmethod/latin/LatinIME;
.super Ljava/lang/Object;
.source "LatinIME.java"


# static fields
.field private static final LOCALE:Ljava/lang/String; = "en"

.field private static final QUICK_FIXES:Z = true


# instance fields
.field private mAutoCorrectEnabled:Z

.field private mAutoCorrectOn:Z

.field private mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

.field private mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

.field private mContext:Landroid/content/Context;

.field private mCorrectionMode:I

.field private mHasDictionary:Z

.field private mInputTypeNoAutoCorrect:Z

.field private mPredictionOn:Z

.field private mSentenceSeparators:Ljava/lang/String;

.field private mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

.field private mWord:Lcom/android/inputmethod/latin/WordComposer;

.field private mWordSeparators:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 38
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    .line 41
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private checkAddToDictionary(Ljava/lang/CharSequence;I)V
    .registers 5
    .parameter "suggestion"
    .parameter "frequencyDelta"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 105
    :cond_18
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 107
    :cond_21
    return-void
.end method

.method private updateCorrectionMode()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v0

    :goto_c
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasDictionary:Z

    .line 77
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    if-nez v0, :cond_12

    :cond_12
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasDictionary:Z

    if-eqz v0, :cond_36

    move v0, v2

    :goto_1b
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    .line 79
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x2

    :goto_26
    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 82
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_33

    .line 83
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setCorrectionMode(I)V

    .line 85
    :cond_33
    return-void

    :cond_34
    move v0, v1

    .line 76
    goto :goto_c

    :cond_36
    move v0, v1

    .line 77
    goto :goto_1b

    .line 79
    :cond_38
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_3e

    move v0, v2

    goto :goto_26

    :cond_3e
    move v0, v1

    goto :goto_26
.end method


# virtual methods
.method public getAutoDictionary()Lcom/android/inputmethod/latin/AutoDictionary;
    .registers 1

    .prologue
    .line 137
    iget-object p0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    .end local p0
    check-cast p0, Lcom/android/inputmethod/latin/AutoDictionary;

    return-object p0
.end method

.method public getBinaryDictionary()Lcom/android/inputmethod/latin/BinaryDictionary;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->getBinaryDictionary()Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    return-object v0
.end method

.method getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method

.method public getUserDictionary()Lcom/android/inputmethod/latin/UserDictionary;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    return-object v0
.end method

.method public initSuggest(Ljava/lang/String;)V
    .registers 6
    .parameter "locale"

    .prologue
    const-string v3, "en"

    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 48
    :cond_b
    new-instance v0, Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mContext:Landroid/content/Context;

    const v2, 0x7f060002

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setAutoTextEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    if-eqz v0, :cond_26

    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserDictionary;->close()V

    .line 54
    :cond_26
    new-instance v0, Lcom/android/inputmethod/latin/UserDictionary;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mContext:Landroid/content/Context;

    const-string v2, "en"

    invoke-direct {v0, v1, v3}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    .line 56
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_48

    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    if-nez v0, :cond_48

    .line 58
    new-instance v0, Lcom/android/inputmethod/latin/ContactsDictionary;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 61
    :cond_48
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    if-eqz v0, :cond_51

    .line 62
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V

    .line 64
    :cond_51
    new-instance v0, Lcom/android/inputmethod/latin/AutoDictionary;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mContext:Landroid/content/Context;

    const-string v2, "en"

    invoke-direct {v0, v1, p0, v3}, Lcom/android/inputmethod/latin/AutoDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 66
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 67
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 69
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public preferCapitalization(Lcom/android/inputmethod/latin/WordComposer;)Z
    .registers 3
    .parameter "word"

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->isCapitalized()Z

    move-result v0

    return v0
.end method

.method promoteToUserDictionary(Ljava/lang/String;I)V
    .registers 4
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/UserDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 118
    :goto_8
    return-void

    .line 117
    :cond_9
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    goto :goto_8
.end method

.method public updateSuggestions(Lcom/android/inputmethod/latin/WordComposer;Landroid/view/View;)Ljava/util/List;
    .registers 8
    .parameter "word"
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    if-nez v2, :cond_b

    .line 89
    :cond_9
    const/4 v2, 0x0

    .line 99
    :goto_a
    return-object v2

    .line 92
    :cond_b
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, p1, v3}, Lcom/android/inputmethod/latin/Suggest;->getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Z)Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    .local v0, original:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 97
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_35
    move-object v2, v1

    .line 99
    goto :goto_a
.end method
