.class public Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;
.super Ljava/lang/Object;
.source "EnglishInputProcessor.java"


# instance fields
.field private mLastKeyCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;->mLastKeyCode:I

    return-void
.end method


# virtual methods
.method public processKey(Landroid/view/inputmethod/InputConnection;Landroid/view/KeyEvent;ZZ)Z
    .registers 16
    .parameter "inputContext"
    .parameter "event"
    .parameter "upperCase"
    .parameter "realAction"

    .prologue
    const/16 v10, 0x1d

    const/4 v9, 0x7

    const/16 v8, 0x61

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    if-eqz p1, :cond_b

    if-nez p2, :cond_d

    :cond_b
    move v5, v6

    .line 93
    :goto_c
    return v5

    .line 33
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 35
    .local v2, keyCode:I
    const/4 v3, 0x0

    .line 36
    .local v3, prefix:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    invoke-interface {p1, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, keyChar:I
    if-lt v2, v10, :cond_43

    const/16 v5, 0x36

    if-gt v2, v5, :cond_43

    .line 41
    sub-int v5, v2, v10

    add-int/lit8 v1, v5, 0x61

    .line 42
    if-eqz p3, :cond_28

    .line 43
    add-int/lit8 v5, v1, 0x41

    sub-int v1, v5, v8

    .line 58
    :cond_28
    :goto_28
    if-nez v1, :cond_81

    .line 59
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;->mLastKeyCode:I

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, insert:Ljava/lang/String;
    const/16 v5, 0x43

    if-ne v5, v2, :cond_71

    .line 63
    if-eqz p4, :cond_36

    .line 64
    invoke-interface {p1, v7, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 74
    :cond_36
    :goto_36
    if-eqz v0, :cond_41

    if-eqz p4, :cond_41

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {p1, v0, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_41
    move v5, v7

    .line 77
    goto :goto_c

    .line 45
    .end local v0           #insert:Ljava/lang/String;
    :cond_43
    if-lt v2, v9, :cond_4e

    const/16 v5, 0x10

    if-gt v2, v5, :cond_4e

    .line 47
    sub-int v5, v2, v9

    add-int/lit8 v1, v5, 0x30

    goto :goto_28

    .line 48
    :cond_4e
    const/16 v5, 0x37

    if-ne v2, v5, :cond_55

    .line 49
    const/16 v1, 0x2c

    goto :goto_28

    .line 50
    :cond_55
    const/16 v5, 0x38

    if-ne v2, v5, :cond_5c

    .line 51
    const/16 v1, 0x2e

    goto :goto_28

    .line 52
    :cond_5c
    const/16 v5, 0x4b

    if-ne v2, v5, :cond_63

    .line 53
    const/16 v1, 0x27

    goto :goto_28

    .line 54
    :cond_63
    const/16 v5, 0x4d

    if-ne v2, v5, :cond_6a

    .line 55
    const/16 v1, 0x40

    goto :goto_28

    .line 56
    :cond_6a
    const/16 v5, 0x4c

    if-ne v2, v5, :cond_28

    const/16 v1, 0x2f

    goto :goto_28

    .line 66
    .restart local v0       #insert:Ljava/lang/String;
    :cond_71
    const/16 v5, 0x42

    if-ne v5, v2, :cond_78

    .line 67
    const-string v0, "\n"

    goto :goto_36

    .line 68
    :cond_78
    const/16 v5, 0x3e

    if-ne v5, v2, :cond_7f

    .line 69
    const-string v0, " "

    goto :goto_36

    :cond_7f
    move v5, v6

    .line 71
    goto :goto_c

    .line 80
    .end local v0           #insert:Ljava/lang/String;
    :cond_81
    if-nez p4, :cond_85

    move v5, v7

    .line 81
    goto :goto_c

    .line 83
    :cond_85
    const/16 v5, 0x3b

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;->mLastKeyCode:I

    if-eq v5, v6, :cond_91

    const/16 v5, 0x3b

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;->mLastKeyCode:I

    if-ne v5, v6, :cond_ac

    .line 85
    :cond_91
    if-lt v1, v8, :cond_9b

    const/16 v5, 0x7a

    if-gt v1, v5, :cond_9b

    .line 86
    sub-int v5, v1, v8

    add-int/lit8 v1, v5, 0x41

    .line 90
    :cond_9b
    :goto_9b
    int-to-char v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 92
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;->mLastKeyCode:I

    move v5, v7

    .line 93
    goto/16 :goto_c

    .line 87
    .end local v4           #result:Ljava/lang/String;
    :cond_ac
    const/16 v5, 0x39

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/EnglishInputProcessor;->mLastKeyCode:I

    if-ne v5, v6, :cond_9b

    goto :goto_9b
.end method
