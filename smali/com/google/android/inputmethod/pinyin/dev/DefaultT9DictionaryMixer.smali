.class public Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;
.super Ljava/lang/Object;
.source "DefaultT9DictionaryMixer.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/T9DictionaryMixer;


# instance fields
.field private mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

.field private mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

.field private mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

.field private mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/BinaryDictionary;Lcom/android/inputmethod/latin/ContactsDictionary;Lcom/android/inputmethod/latin/AutoDictionary;Lcom/android/inputmethod/latin/UserDictionary;)V
    .registers 6
    .parameter "binaryDictionary"
    .parameter "contactsDictionary"
    .parameter "autoDictionary"
    .parameter "userDictionary"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 28
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 29
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    .line 30
    iput-object p4, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    .line 31
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;

    invoke-direct {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;-><init>(Lcom/android/inputmethod/latin/MekDictionary;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;

    .line 32
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;

    invoke-virtual {v0, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;

    invoke-virtual {v0, p3}, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;

    invoke-virtual {v0, p4}, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 35
    return-void
.end method


# virtual methods
.method public addNewWord(Ljava/lang/String;)V
    .registers 4
    .parameter "word"

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    .line 65
    :cond_7
    :goto_7
    return-void

    .line 47
    :cond_8
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 50
    :cond_14
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/ContactsDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 54
    :cond_20
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    if-eqz v0, :cond_2b

    .line 56
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/AutoDictionary;->addWord(Ljava/lang/String;I)V

    goto :goto_7

    .line 59
    :cond_2b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    if-eqz v0, :cond_7

    .line 60
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/UserDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    goto :goto_7
.end method

.method public getSuggestions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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
    .line 38
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;->mMixer:Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9SuggestMixer;->getSuggestions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
