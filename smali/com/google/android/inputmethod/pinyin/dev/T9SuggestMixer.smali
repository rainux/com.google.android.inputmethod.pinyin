.class public Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;
.super Ljava/lang/Object;
.source "T9SuggestMixer.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$1;,
        Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    }
.end annotation


# instance fields
.field private mComposer:Lcom/android/inputmethod/latin/WordComposer;

.field private mDictionaries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mMainDictionary:Lcom/android/inputmethod/latin/MekDictionary;

.field private mWords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/MekDictionary;)V
    .registers 3
    .parameter "mainDictionary"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mDictionaries:Ljava/util/LinkedList;

    .line 22
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mComposer:Lcom/android/inputmethod/latin/WordComposer;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mWords:Ljava/util/LinkedList;

    .line 35
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mMainDictionary:Lcom/android/inputmethod/latin/MekDictionary;

    .line 36
    return-void
.end method


# virtual methods
.method public addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 3
    .parameter "dictionary"

    .prologue
    .line 42
    if-eqz p1, :cond_7

    .line 43
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mDictionaries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_7
    return-void
.end method

.method public addWord([CIII)Z
    .registers 12
    .parameter "word"
    .parameter "wordOffset"
    .parameter "wordLength"
    .parameter "frequency"

    .prologue
    const/4 v6, 0x1

    .line 49
    const/4 v3, 0x0

    .local v3, length:I
    :goto_2
    if-ge v3, p3, :cond_a

    .line 50
    add-int v4, p2, v3

    aget-char v4, p1, v4

    if-nez v4, :cond_51

    .line 54
    :cond_a
    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;-><init>(Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$1;)V

    .line 55
    .local v1, data:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, v1, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->word:Ljava/lang/String;

    .line 56
    iput p4, v1, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->frequency:I

    .line 59
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mWords:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 60
    .local v2, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;>;"
    :cond_1f
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 61
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;

    .line 62
    .local v0, current:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    iget v4, v0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->frequency:I

    iget v5, v1, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->frequency:I

    if-ge v4, v5, :cond_54

    .line 63
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 73
    .end local v0           #current:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    :cond_34
    invoke-interface {v2, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 76
    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 77
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;

    .line 78
    .restart local v0       #current:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    iget-object v4, v0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->word:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->word:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 79
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_37

    .line 49
    .end local v0           #current:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    .end local v1           #data:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    .end local v2           #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;>;"
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 66
    .restart local v0       #current:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    .restart local v1       #data:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    .restart local v2       #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;>;"
    :cond_54
    iget-object v4, v0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->word:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->word:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 67
    iget v4, v0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->frequency:I

    iget v5, v1, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->frequency:I

    if-ge v4, v5, :cond_68

    .line 68
    iget v4, v1, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->frequency:I

    iput v4, v0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->frequency:I

    :cond_68
    move v4, v6

    .line 83
    .end local v0           #current:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    :goto_69
    return v4

    :cond_6a
    move v4, v6

    goto :goto_69
.end method

.method public getSuggestions(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .parameter "composing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 90
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 91
    .local v7, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 93
    .local v3, entries:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[C>;"
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mWords:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 94
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 97
    const/4 v5, 0x0

    .local v5, i:I
    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_39

    .line 98
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v10}, Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;->getKeyCaptions(CZ)[C

    move-result-object v0

    .line 99
    .local v0, captions:[C
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;->getKeyCaptionsInt(C)[I

    move-result-object v1

    .line 100
    .local v1, codes:[I
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mComposer:Lcom/android/inputmethod/latin/WordComposer;

    aget v9, v1, v10

    invoke-virtual {v8, v9, v1}, Lcom/android/inputmethod/latin/WordComposer;->add(I[I)V

    .line 101
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 105
    .end local v0           #captions:[C
    .end local v1           #codes:[I
    :cond_39
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mMainDictionary:Lcom/android/inputmethod/latin/MekDictionary;

    invoke-interface {v8, v3, p0}, Lcom/android/inputmethod/latin/MekDictionary;->getMekWords(Ljava/util/List;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 108
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mDictionaries:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/Dictionary;

    .line 109
    .local v2, dict:Lcom/android/inputmethod/latin/Dictionary;
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mComposer:Lcom/android/inputmethod/latin/WordComposer;

    const/4 v9, 0x0

    invoke-virtual {v2, v8, p0, v9}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    goto :goto_44

    .line 113
    .end local v2           #dict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_57
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->mWords:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;

    .line 114
    .local v4, frequency:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    iget-object v8, v4, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;->word:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 117
    .end local v4           #frequency:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer$WordFrequency;
    :cond_6f
    return-object v7
.end method
