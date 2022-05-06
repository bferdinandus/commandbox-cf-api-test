component rest=true restPath="/lipsum"
{
    public struct function getTime()
            httpMethod="GET"
            restPath="time"
            produces="application/json"
    {
        return {time=now()};
    }
}
