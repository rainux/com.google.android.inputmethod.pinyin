.class public Lcom/android/inputmethod/latin/ContactsDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "ContactsDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;
    }
.end annotation


# static fields
.field private static final INDEX_NAME:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mLastLoadedContacts:J

.field private mObserver:Landroid/database/ContentObserver;

.field private mRequiresReload:Z

.field private mUpdatingContacts:Z

.field private mUpdatingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingLock:Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, cres:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/inputmethod/latin/ContactsDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/ContactsDictionary$1;-><init>(Lcom/android/inputmethod/latin/ContactsDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_1f
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->loadDictionaryAsyncLocked()V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v2
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/ContactsDictionary;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/inputmethod/latin/ContactsDictionary;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mRequiresReload:Z

    return p1
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/inputmethod/latin/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/ContactsDictionary;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ContactsDictionary;->addWords(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/inputmethod/latin/ContactsDictionary;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/android/inputmethod/latin/ContactsDictionary;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingContacts:Z

    return p1
.end method

.method private addWords(Landroid/database/Cursor;)V
    .registers 12
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->clearDictionary()V

    .line 113
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getMaxWordLength()I

    move-result v4

    .line 114
    .local v4, maxWordLength:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 115
    :goto_e
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_5e

    .line 116
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_5a

    .line 119
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 122
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v3, :cond_5a

    .line 123
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 125
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_2d
    if-ge v2, v3, :cond_41

    .line 126
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    .local v0, c:C
    const/16 v8, 0x2d

    if-eq v0, v8, :cond_57

    const/16 v8, 0x27

    if-eq v0, v8, :cond_57

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_57

    .line 134
    .end local v0           #c:C
    :cond_41
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, word:Ljava/lang/String;
    sub-int v1, v2, v9

    .line 141
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 142
    .local v7, wordLen:I
    if-ge v7, v4, :cond_54

    if-le v7, v9, :cond_54

    .line 143
    const/16 v8, 0x80

    invoke-super {p0, v6, v8}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 122
    .end local v2           #j:I
    .end local v6           #word:Ljava/lang/String;
    .end local v7           #wordLen:I
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 125
    .restart local v0       #c:C
    .restart local v2       #j:I
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 149
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #len:I
    :cond_5a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_e

    .line 152
    .end local v5           #name:Ljava/lang/String;
    :cond_5e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 153
    return-void
.end method

.method private declared-synchronized loadDictionaryAsyncLocked()V
    .registers 7

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    iget-wide v2, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mLastLoadedContacts:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-lez v2, :cond_2e

    .line 79
    :cond_18
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingContacts:Z

    if-nez v2, :cond_2e

    .line 80
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingContacts:Z

    .line 81
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mRequiresReload:Z

    .line 82
    new-instance v2, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;-><init>(Lcom/android/inputmethod/latin/ContactsDictionary;Lcom/android/inputmethod/latin/ContactsDictionary$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 85
    :cond_2e
    monitor-exit p0

    return-void

    .line 76
    .end local v0           #now:J
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 70
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 73
    :cond_15
    monitor-exit p0

    return-void

    .line 69
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V
    .registers 6
    .parameter "codes"
    .parameter "callback"
    .parameter "nextLettersFrequencies"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17

    .line 92
    :try_start_4
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mRequiresReload:Z

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->loadDictionaryAsyncLocked()V

    .line 94
    :cond_b
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingContacts:Z

    if-eqz v1, :cond_12

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1a

    .line 97
    :goto_10
    monitor-exit p0

    return-void

    .line 95
    :cond_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_1a

    .line 96
    :try_start_13
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_10

    .line 90
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_17
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "word"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1d

    .line 103
    :try_start_4
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mRequiresReload:Z

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->loadDictionaryAsyncLocked()V

    .line 104
    :cond_b
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary;->mUpdatingContacts:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1a

    move v0, v1

    .line 107
    :goto_12
    monitor-exit p0

    return v0

    .line 105
    :cond_14
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_1a

    .line 107
    :try_start_15
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d

    move-result v0

    goto :goto_12

    .line 105
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 101
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
