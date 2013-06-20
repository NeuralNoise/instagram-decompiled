.class abstract Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer;
.super Lcom/fasterxml/jackson/datatype/guava/deser/GuavaCollectionDeserializer;
.source "GuavaImmutableCollectionDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/a/a/b/dg",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Lcom/fasterxml/jackson/datatype/guava/deser/GuavaCollectionDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 0
    .parameter "type"
    .parameter "typeDeser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer;,"Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer<TT;>;"
    .local p3, deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;,"Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaCollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected _deserializeContents(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/a/a/b/dg;
    .locals 5
    .parameter "jp"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer;,"Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer<TT;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 29
    iget-object v2, p0, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer;->_typeDeserializerForValue:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer;->createBuilder()Lcom/a/a/b/di;

    move-result-object v3

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v4, :cond_2

    .line 37
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v4, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_1
    invoke-virtual {v3, v0}, Lcom/a/a/b/di;->a(Ljava/lang/Object;)Lcom/a/a/b/di;

    goto :goto_0

    .line 39
    :cond_0
    if-nez v2, :cond_1

    .line 40
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v3}, Lcom/a/a/b/di;->a()Lcom/a/a/b/dg;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method protected bridge synthetic _deserializeContents(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    .local p0, this:Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer;,"Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/datatype/guava/deser/GuavaImmutableCollectionDeserializer;->_deserializeContents(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/a/a/b/dg;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createBuilder()Lcom/a/a/b/di;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/di",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
