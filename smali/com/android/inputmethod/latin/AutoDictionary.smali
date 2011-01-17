.class public Lcom/android/inputmethod/latin/AutoDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "AutoDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final AUTODICT_TABLE_NAME:Ljava/lang/String; = "words"

.field private static final COLUMN_FREQUENCY:Ljava/lang/String; = "freq"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_LOCALE:Ljava/lang/String; = "locale"

.field private static final COLUMN_WORD:Ljava/lang/String; = "word"

.field private static final DATABASE_NAME:Ljava/lang/String; = "auto_dict.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "freq DESC"

.field static final FREQUENCY_FOR_AUTO_ADD:I = 0xfa

.field static final FREQUENCY_FOR_PICKED:I = 0x3

.field static final FREQUENCY_FOR_TYPED:I = 0x1

.field private static final PROMOTION_THRESHOLD:I = 0xc

.field private static final VALIDITY_THRESHOLD:I = 0x6

.field private static sDictProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIme:Lcom/android/inputmethod/latin/LatinIME;

.field private mLocale:Ljava/lang/String;

.field private mOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-string v5, "word"

    const-string v4, "locale"

    const-string v3, "freq"

    const-string v2, "_id"

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    .line 75
    sget-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word"

    const-string v1, "word"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "freq"

    const-string v1, "freq"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "locale"

    const-string v1, "locale"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "ime"
    .parameter "locale"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object p2, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    .line 86
    iput-object p3, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    .line 88
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    .line 89
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->loadDictionary()V

    .line 91
    :cond_22
    return-void
.end method

.method private delete(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 197
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "words"

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, count:I
    return v0
.end method

.method private getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter "word"
    .parameter "frequency"
    .parameter "locale"

    .prologue
    .line 211
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 212
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "freq"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v1, "locale"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object v0
.end method

.method private insert(Landroid/content/ContentValues;)Z
    .registers 7
    .parameter "values"

    .prologue
    .line 187
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "words"

    const-string v4, "word"

    invoke-virtual {v0, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 189
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_16

    .line 190
    const/4 v3, 0x1

    .line 192
    :goto_15
    return v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private loadDictionary()V
    .registers 10

    .prologue
    .line 105
    const-string v5, "locale=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/inputmethod/latin/AutoDictionary;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 107
    const-string v5, "word"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 108
    .local v4, wordIndex:I
    const-string v5, "freq"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, frequencyIndex:I
    :goto_20
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 110
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, word:Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 114
    .local v1, frequency:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->getMaxWordLength()I

    move-result v6

    if-ge v5, v6, :cond_3b

    .line 115
    invoke-super {p0, v3, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 117
    :cond_3b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_20

    .line 120
    .end local v1           #frequency:I
    .end local v2           #frequencyIndex:I
    .end local v3           #word:Ljava/lang/String;
    .end local v4           #wordIndex:I
    :cond_3f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    return-void
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x0

    .line 175
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 176
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "words"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 177
    sget-object v3, Lcom/android/inputmethod/latin/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 180
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 181
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "freq DESC"

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 183
    .local v8, c:Landroid/database/Cursor;
    return-object v8
.end method

.method private update(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .parameter "word"
    .parameter "frequency"
    .parameter "locale"

    .prologue
    const-string v6, "words"

    .line 202
    iget-object v3, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 203
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "words"

    const-string v3, "word=? AND locale=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v2, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    .line 205
    .local v0, count:J
    const-string v3, "words"

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/AutoDictionary;->getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 207
    long-to-int v3, v0

    return v3
.end method


# virtual methods
.method public addWord(Ljava/lang/String;I)V
    .registers 10
    .parameter "word"
    .parameter "addFrequency"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 127
    .local v1, length:I
    if-lt v1, v6, :cond_f

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AutoDictionary;->getMaxWordLength()I

    move-result v2

    if-le v1, v2, :cond_10

    .line 144
    :cond_f
    :goto_f
    return-void

    .line 128
    :cond_10
    iget-object v2, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->isAutoCapitalized()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/AutoDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    .line 133
    .local v0, freq:I
    if-gez v0, :cond_5c

    move v0, p2

    .line 134
    :goto_40
    invoke-super {p0, p1, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 135
    const/16 v2, 0xc

    if-lt v0, v2, :cond_60

    .line 136
    iget-object v2, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    const/16 v3, 0xfa

    invoke-virtual {v2, p1, v3}, Lcom/android/inputmethod/latin/LatinIME;->promoteToUserDictionary(Ljava/lang/String;I)V

    .line 139
    const-string v2, "word=? AND locale=?"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v4

    iget-object v4, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/AutoDictionary;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_f

    .line 133
    :cond_5c
    add-int v2, v0, p2

    move v0, v2

    goto :goto_40

    .line 142
    :cond_60
    iget-object v2, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mLocale:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/inputmethod/latin/AutoDictionary;->update(Ljava/lang/String;ILjava/lang/String;)I

    goto :goto_f
.end method

.method public close()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoDictionary;->mOpenHelper:Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/AutoDictionary$DatabaseHelper;->close()V

    .line 101
    return-void
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "word"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/AutoDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    .line 96
    .local v0, frequency:I
    const/4 v1, 0x6

    if-lt v0, v1, :cond_9

    const/4 v1, 0x1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method
